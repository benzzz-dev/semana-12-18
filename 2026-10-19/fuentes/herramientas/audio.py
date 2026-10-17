import numpy as np, wave, sys, json
def make(path, dur, pops, bpm=100, seed=1, chords=None):
    sr=44100; n=int(sr*dur); t=np.arange(n)/sr; out=np.zeros(n)
    rng=np.random.default_rng(seed)
    beat=60/bpm
    # soft pad: chord progression
    chords=chords or [[220,277.18,329.63],[196,246.94,293.66],[174.61,220,261.63],[196,246.94,293.66]]
    bar=beat*4
    for i in range(int(dur/bar)+1):
        s=int(i*bar*sr); e=min(n,int((i+1)*bar*sr))
        if s>=n: break
        tt=t[s:e]-i*bar
        env=np.minimum(1,tt/0.4)*np.minimum(1,(bar-tt)/0.4)
        for f in chords[i%len(chords)]:
            out[s:e]+=0.035*env*(np.sin(2*np.pi*f*tt)+0.3*np.sin(2*np.pi*2*f*tt))
    # kick + hats
    k=0
    while k*beat<dur:
        s=int(k*beat*sr); L=int(0.25*sr); tt=np.arange(min(L,n-s))/sr
        f=50+90*np.exp(-tt*30)
        out[s:s+len(tt)]+=0.32*np.sin(2*np.pi*np.cumsum(f)/sr)*np.exp(-tt*12)
        hs=int((k*beat+beat/2)*sr)
        if hs<n:
            L=int(0.05*sr); tt=np.arange(min(L,n-hs))/sr
            out[hs:hs+len(tt)]+=0.05*rng.standard_normal(len(tt))*np.exp(-tt*80)
        k+=1
    # pops (notification blip: two quick sine tones)
    for p in pops:
        s=int(p*sr)
        for j,(f,d) in enumerate([(1318.5,0),(1760,0.06)]):
            ss=s+int(d*sr); L=int(0.12*sr); tt=np.arange(min(L,max(0,n-ss)))/sr
            if len(tt)==0: continue
            out[ss:ss+len(tt)]+=0.28*np.sin(2*np.pi*f*tt)*np.exp(-tt*35)
    # fades
    fi=int(0.05*sr); fo=int(0.8*sr)
    out[:fi]*=np.linspace(0,1,fi); out[-fo:]*=np.linspace(1,0,fo)
    out=out/np.max(np.abs(out))*0.8
    st=np.stack([out,out],1)
    with wave.open(path,'wb') as w:
        w.setnchannels(2); w.setsampwidth(2); w.setframerate(sr)
        w.writeframes((st*32767).astype(np.int16).tobytes())
if __name__=="__main__":
    a=json.loads(sys.argv[1]); make(**a)
