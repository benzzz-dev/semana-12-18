import sys
sys.path.insert(0,'.')
from base import page, css, chk, BR
X='''
.note{position:absolute;left:80px;right:80px;font-size:42px;font-weight:600;line-height:1.3;color:#374151}
.num{position:absolute;left:80px;top:230px;font-weight:900;font-size:200px;letter-spacing:-0.06em;line-height:.85;color:#c4b5fd}
.q2{position:absolute;left:80px;right:80px;top:430px;font-size:80px}
.box{position:absolute;left:80px;right:80px;background:#efeae2;border-radius:44px;padding:34px 30px;display:flex;flex-direction:column;gap:18px;box-shadow:0 24px 60px rgba(30,27,75,.12)}
.seen{font-family:"DejaVu Sans Mono",monospace;font-size:28px;color:#6b7280;align-self:flex-end;font-weight:700}
.clock{position:absolute;left:80px;width:300px;height:300px;border-radius:50%;background:#fff;border:12px solid #5b4ce6;box-shadow:0 20px 40px rgba(30,27,75,.12)}
.clock b{position:absolute;inset:0;display:flex;flex-direction:column;align-items:center;justify-content:center;font-weight:900;font-size:110px;letter-spacing:-0.04em;color:#5b21b6;line-height:.9}
.clock b small{font-size:36px;color:#1e1b4b;letter-spacing:0;font-weight:800;margin-top:8px}
.clock::before{content:"";position:absolute;inset:-12px;border-radius:50%;background:conic-gradient(#c4b5fd 0 25%,transparent 25%);-webkit-mask:radial-gradient(circle,transparent 62%,#000 63%);mask:radial-gradient(circle,transparent 62%,#000 63%)}
.rule{position:absolute;left:430px;right:80px;font-size:42px;font-weight:700;line-height:1.3;color:#374151}
.cards{position:absolute;left:80px;right:80px;display:flex;gap:30px}
.card{flex:1;background:#fff;border-radius:36px;padding:34px 32px;box-shadow:0 20px 50px rgba(30,27,75,.12);min-height:300px}
.card .k{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:30px;letter-spacing:.12em}
.card .v{font-weight:900;font-size:76px;letter-spacing:-0.04em;margin-top:14px}
.card.empty{background:rgba(255,255,255,.45);border:5px dashed #a78bfa;box-shadow:none}
.card.empty .v{color:#a78bfa}
.vs{position:absolute;left:80px;right:80px;display:flex;flex-direction:column;gap:22px}
.row{display:flex;align-items:center;gap:24px}
.row .tg{flex:none;width:96px;height:96px;border-radius:28px;display:flex;align-items:center;justify-content:center;font-weight:900;font-size:56px;color:#fff}
.row .tg.no{background:#f87171}.row .tg.si{background:#5b4ce6}
.row .msg{max-width:none;flex:1}
.chips{display:flex;gap:12px;margin-top:10px}
.tick{color:#9ca3af}
.endl{position:absolute;left:80px;right:80px;top:300px;font-size:84px}
.list{position:absolute;left:80px;right:80px;top:760px;display:flex;flex-direction:column;gap:20px}
.list div{display:flex;align-items:center;gap:22px;font-size:46px;font-weight:800}
.list i{flex:none;width:62px;height:62px;border-radius:18px;background:#5b4ce6;display:flex;align-items:center;justify-content:center}
.list i svg{width:38px;height:38px}
'''
def cnt(i): return f'<div class="counter">{i}/6</div>'
S={}
S['post-1-1']=cnt(1)+'''<div class="lbl t">Chats que se pierden</div>
<div class="ttl q" style="font-size:96px;top:260px">4 momentos en que tu cliente decide <span class="kw hl">irse a otro lado</span> <span style="font-size:62px;color:#6d28d9">(y no te avisa)</span></div>
<div class="box" style="top:880px;padding:28px 30px"><div class="msg out" style="font-size:40px">Hola, ¿tienes hora para el viernes?<small>10:12 ✓✓</small></div><div class="seen">Visto · sin respuesta</div></div>
<div class="swipe">desliza →</div>'''
S['post-1-2']=cnt(2)+'''<div class="num">1</div>
<div class="ttl q2">Cuando pasan más de <span class="kw hl">15 minutos</span> sin respuesta.</div>
<div class="clock" style="top:820px"><b>15<small>min</small></b></div>
<div class="rule" style="top:880px">En ese rato ya le escribió a otros dos locales.</div>'''
S['post-1-3']=cnt(3)+'''<div class="num">2</div>
<div class="ttl q2" style="font-size:76px">Cuando le das la hora, pero <span class="kw hl">no el precio</span> (o al revés).</div>
<div class="cards" style="top:820px"><div class="card"><div class="k">HORA</div><div class="v">Jue 17:00</div></div><div class="card empty"><div class="k">PRECIO</div><div class="v">¿?</div></div></div>
<div class="note" style="top:1150px">Media respuesta = otra pregunta más.</div>'''
S['post-1-4']=cnt(4)+'''<div class="num">3</div>
<div class="ttl q2" style="font-size:66px">Cuando le preguntas “¿qué día te sirve?” en vez de <span class="kw hl">ofrecerle dos horas.</span></div>
<div class="vs" style="top:820px">
<div class="row"><div class="tg no">✕</div><div class="msg out" style="font-size:40px">¿Qué día te sirve?<small>10:20 ✓✓</small></div></div>
<div class="row"><div class="tg si">✓</div><div class="msg out" style="font-size:40px">¿Mar 11:00 o jue 18:00?<small>10:20 ✓✓</small></div></div>
</div>'''
S['post-1-5']=cnt(5)+'''<div class="num">4</div>
<div class="ttl q2">Cuando agenda, pero <span class="kw hl">nadie le confirma.</span></div>
<div class="box" style="top:780px"><div class="msg in" style="font-size:40px">Ya, el sábado a las 11 entonces<small>10:31</small></div><div class="msg in" style="font-size:40px">¿Quedé agendada?<small>12:05</small></div><div class="seen">sin respuesta</div></div>'''
S['post-1-6']=cnt(6)+f'''<div class="lbl t">La solución</div>
<div class="ttl endl"><span class="kw hl">Reservum</span> cubre los cuatro.</div>
<div class="list">
<div><i>{chk}</i>Responde al instante.</div>
<div><i>{chk}</i>Da precio y horas en el mismo mensaje.</div>
<div><i>{chk}</i>Ofrece dos opciones concretas.</div>
<div><i>{chk}</i>Confirma y recuerda la hora.</div>
</div>'''
X2='''
.big{position:absolute;left:80px;right:80px;top:210px;font-weight:900;letter-spacing:-0.045em;line-height:1.0;color:#1e1b4b;font-size:76px}
.big .kw{color:#5b21b6}
.cal{position:absolute;left:80px;right:80px;top:590px;background:#fff;border-radius:40px;padding:30px 34px;box-shadow:0 24px 60px rgba(30,27,75,.12)}
.cal .h{display:flex;justify-content:space-between;align-items:center;margin-bottom:16px}
.cal .h b{font-weight:900;font-size:48px;letter-spacing:-0.03em}
.cal .h span{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:26px;letter-spacing:.1em}
.g{display:grid;grid-template-columns:repeat(7,1fr);gap:10px}
.g div{height:54px;border-radius:14px;display:flex;align-items:center;justify-content:center;font-weight:700;font-size:28px;color:#374151;background:#f5f3ff}
.g .w{background:none;font-family:"DejaVu Sans Mono",monospace;color:#6d28d9;font-size:24px;height:36px}
.g .x{background:none}
.g .m{background:#5b4ce6;color:#fff}
.g .p{background:#c4b5fd;color:#1e1b4b}
.cap{position:absolute;right:80px;top:600px;width:120px;opacity:.9}
.q3{position:absolute;left:80px;right:80px;top:1170px;font-weight:900;font-size:56px;letter-spacing:-0.03em;color:#1e1b4b}
.q3 .kw{color:#5b21b6}
'''
# Nov 2026: 1st is Sunday. Monday-first grid -> 6 blanks
days=''.join('<div class="w">'+d+'</div>' for d in ['L','M','M','J','V','S','D'])
cells='<div class="x"></div>'*6
marked={6,7,13,14,20,21,27,28}; part={12,19,26}
for d in range(1,31):
    c='m' if d in marked else ('p' if d in part else '')
    cells+=f'<div class="{c}">{d}</div>'
S2=f'''<div class="lbl t" style="top:200px">Temporada de licenciaturas</div>
<div class="big" style="top:255px">Licenciaturas y graduaciones: las horas de noviembre <span class="kw hl">ya se están pidiendo.</span></div>
<svg class="cap" style="top:200px" viewBox="0 0 100 70"><path d="M50 4 96 24 50 44 4 24z" fill="#5b4ce6"/><path d="M24 34v16c0 8 52 8 52 0V34L50 46z" fill="#1e1b4b"/><path d="M88 28v20" stroke="#5b4ce6" stroke-width="4"/><circle cx="88" cy="50" r="5" fill="#c4b5fd"/></svg>
<div class="cal"><div class="h"><b>Noviembre 2026</b><span>PEINADO · MAQUILLAJE</span></div><div class="g">{days}{cells}</div></div>
<div class="q3">¿Tu WhatsApp <span class="kw hl">está listo?</span></div>'''
for k,v in S.items(): open(k+'.html','w').write(page(v,X))
open('post-2-1.html','w').write(page(S2,X2))
CV=css+'''.abs{position:absolute;left:80px;right:140px}
.cta{display:inline-flex;background:#5b4ce6;color:#fff;font-weight:800;font-size:46px;padding:22px 40px;border-radius:999px}
.th{width:250px;height:250px;border-radius:30px;background:#fff;box-shadow:0 20px 50px rgba(30,27,75,.12);display:flex;align-items:center;justify-content:center}
.th svg{width:200px;height:200px}
.p{flex:1;background:#fff;border-radius:36px;padding:30px 10px 26px;box-shadow:0 20px 50px rgba(30,27,75,.12);text-align:center}
.p svg{width:170px;height:170px}.p b{display:block;font-size:54px;font-weight:900;letter-spacing:-0.03em;margin-top:10px}'''
def cover(body):
    return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{CV}</style></head><body><div id="root"><div class="bg"></div>{BR}{body}<div class="foot">reservum.cl</div></div></body></html>'
TH='''<div class="abs" style="top:960px;display:flex;gap:22px">
<div class="th"><svg viewBox="0 0 100 100" fill="none" stroke="#1e1b4b" stroke-width="3" stroke-linecap="round"><circle cx="50" cy="40" r="10"/><path d="M50 30c-8-12-24-4-16 8M50 30c8-12 24-4 16 8M40 40c-14 4-12 20 2 16M60 40c14 4 12 20-2 16M50 50v38M50 70c-10-4-18-2-20 6M50 64c8-6 16-6 20 0"/></svg></div>
<div class="th"><svg viewBox="0 0 100 100" fill="none" stroke="#1e1b4b" stroke-width="3" stroke-linecap="round"><path d="M62 18a32 32 0 1 0 22 50 26 26 0 1 1-22-50z"/><path d="M28 30l3 6 6 1-5 4 1 6-5-3-5 3 1-6-5-4 6-1z"/></svg></div>
<div class="th"><svg viewBox="0 0 100 100" fill="none" stroke="#1e1b4b" stroke-width="3" stroke-linecap="round"><path d="M10 64c10-14 22-14 30 0s20 14 30 0 20-14 22-6"/><path d="M10 78c10-10 22-10 30 0s20 10 30 0 18-10 22-4"/><path d="M40 64c-4-20 10-36 28-36-10 6-14 16-10 26"/></svg></div></div>'''
c1=f'''<div class="lbl abs" style="top:420px">Estudio de tatuajes</div>
<div class="ttl abs" style="top:490px;font-size:128px">“¿Cuánto me sale <span class="kw hl">este?”</span></div>
<div class="abs" style="top:830px;font-family:'DejaVu Sans Mono',monospace;font-weight:700;font-size:44px;color:#6d28d9">+ 3 fotos</div>
{TH}
<div class="abs" style="top:1280px"><span class="cta">Tu WhatsApp cotiza solo</span></div>'''
P='''<svg viewBox="0 0 100 100"><circle cx="50" cy="36" r="20" fill="#1e1b4b"/><path d="M14 96c2-24 18-34 36-34s34 10 36 34z" fill="#1e1b4b"/>EXTRA</svg>'''
c2=f'''<div class="lbl abs" style="top:420px">Barbería</div>
<div class="ttl abs" style="top:490px;font-size:150px">3 barberos, <span class="kw hl">1 WhatsApp</span></div>
<div class="abs" style="top:930px;display:flex;gap:28px">
<div class="p">{P.replace('EXTRA','<path d="M30 30c4-14 36-14 40 0-10-6-30-6-40 0z" fill="#5b4ce6"/>')}<b>Seba</b></div>
<div class="p">{P.replace('EXTRA','<path d="M36 50c4 8 24 8 28 0v6c-6 10-22 10-28 0z" fill="#5b4ce6"/>')}<b>Nico</b></div>
<div class="p">{P.replace('EXTRA','<rect x="28" y="14" width="44" height="12" rx="6" fill="#5b4ce6"/>')}<b>Tomi</b></div></div>
<div class="abs" style="top:1300px"><span class="cta">Cada uno con su agenda</span></div>'''
open('reel-1-portada.html','w').write(cover(c1)); open('reel-2-portada.html','w').write(cover(c2))
