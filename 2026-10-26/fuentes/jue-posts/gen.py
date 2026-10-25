import sys
sys.path.insert(0,'.')
from base import page, css, chk, BR
X='''
.counter{top:88px}
.hr{position:absolute;left:80px;top:220px;font-weight:900;font-size:210px;letter-spacing:-0.06em;line-height:.85;color:#c4b5fd}
.q2{position:absolute;left:80px;right:80px;top:440px;font-size:78px}
.sub2{position:absolute;left:80px;right:80px;font-size:44px;font-weight:600;line-height:1.3;color:#374151}
.phone{position:absolute;width:300px;height:560px;border-radius:56px;background:#1e1b4b;padding:16px}
.phone .sc{width:100%;height:100%;border-radius:42px;background:linear-gradient(170deg,#312e81,#5b4ce6);display:flex;align-items:center;justify-content:center;position:relative}
.wa{width:150px;height:150px;border-radius:40px;background:#22c55e;display:flex;align-items:center;justify-content:center;position:relative}
.wa svg{width:90px;height:90px}
.badge{position:absolute;right:-34px;top:-34px;min-width:96px;height:96px;padding:0 18px;border-radius:48px;background:#ef4444;color:#fff;font-weight:900;font-size:56px;display:flex;align-items:center;justify-content:center;border:6px solid #fff}
.stack{position:absolute;display:flex;flex-direction:column;gap:16px}
.bb{background:#fff;border-radius:28px 28px 28px 8px;padding:18px 26px;font-size:36px;font-weight:600;box-shadow:0 10px 24px rgba(30,27,75,.1);color:#111}
.bb small{font-family:"DejaVu Sans Mono",monospace;font-size:22px;color:#6b7280;margin-left:12px}
.agenda{position:absolute;left:80px;right:80px;display:flex;flex-direction:column;gap:14px}
.agenda .r{display:flex;gap:20px;align-items:center}
.agenda .t{flex:none;width:130px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:32px;color:#6d28d9}
.agenda .b{flex:1;height:82px;border-radius:22px;background:#5b4ce6;color:#fff;font-weight:800;font-size:34px;display:flex;align-items:center;padding:0 26px}
.agenda .b.e{background:rgba(255,255,255,.5);border:5px dashed #9ca3af;color:#6b7280}
.tl{position:absolute;left:80px;right:80px;top:470px;display:flex;flex-direction:column;gap:22px}
.tl .r{display:flex;gap:22px;align-items:center;background:#fff;border-radius:30px;padding:22px 26px;box-shadow:0 14px 34px rgba(30,27,75,.1)}
.tl .t{flex:none;width:150px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:34px;color:#6d28d9}
.tl .x{flex:1;font-size:38px;font-weight:700;line-height:1.2}
.tl i{flex:none;width:62px;height:62px;border-radius:18px;background:#5b4ce6;display:flex;align-items:center;justify-content:center}
.tl i svg{width:38px;height:38px}
.bigb{position:absolute;left:80px;display:flex;align-items:center;gap:26px}
.bigb .ico{width:110px;height:110px;border-radius:30px;background:#5b4ce6;display:flex;align-items:center;justify-content:center}
.bigb .ico svg{width:66px;height:66px}
.bigb .wm{font-weight:900;font-size:100px;letter-spacing:-0.04em}
.bigb .wm i{font-style:normal;color:#5b4ce6}
.ctab{position:absolute;left:80px;display:inline-flex;background:#5b4ce6;color:#fff;font-weight:800;font-size:50px;padding:24px 46px;border-radius:999px}
.nails{position:absolute;display:flex;gap:18px;align-items:flex-end}
.nails i{display:block;width:74px;border-radius:37px 37px 16px 16px}
.clockc{position:absolute;width:300px;height:300px;border-radius:50%;background:#fff;border:12px solid #5b4ce6;box-shadow:0 20px 40px rgba(30,27,75,.12)}
.clockc .h1,.clockc .h2{position:absolute;left:50%;top:50%;background:#1e1b4b;border-radius:8px;transform-origin:50% 100%}
.web{position:absolute;right:-20px;top:-20px;width:300px;opacity:.14}
'''
WA='<svg viewBox="0 0 24 24" fill="#fff"><path d="M12 2a10 10 0 0 0-8.6 15.1L2 22l5-1.3A10 10 0 1 0 12 2zm0 2a8 8 0 1 1-4.1 14.9l-.3-.2-3 .8.8-2.9-.2-.3A8 8 0 0 1 12 4z"/></svg>'
WEB='<svg class="web" viewBox="0 0 200 200" fill="none" stroke="#1e1b4b" stroke-width="2.2"><path d="M200 0L40 160M200 0L110 190M200 0L10 90M200 0L190 200M200 0L0 20"/><path d="M160 10c-10 20-6 30 8 40 14 10 22 8 28 2"/><path d="M110 18c-6 40 0 60 30 80 28 18 44 22 58 18"/><path d="M60 26c-4 60 10 96 50 124 34 24 62 34 88 30"/><path d="M14 38c4 78 24 120 70 150"/></svg>'
def cnt(i): return f'<div class="counter">{i}/7</div>'
def phone(n,top,left=700):
    return f'<div class="phone" style="top:{top}px;left:{left}px"><div class="sc"><div class="wa">{WA}<div class="badge">{n}</div></div></div></div>'
S={}
S['post-1-1']=WEB.replace('class="web"','class="web" style="top:auto;bottom:150px"')+cnt(1)+'''<div class="lbl t">Salón de uñas · jueves 29 oct</div>
<div class="ttl q" style="font-size:96px;top:260px">Jueves antes de Halloween en un salón de uñas, <span class="kw hl">hora por hora.</span></div>
<div class="clockc" style="left:80px;top:800px"><div class="h1" style="width:16px;height:90px;margin:-90px 0 0 -8px;transform:rotate(-60deg)"></div><div class="h2" style="width:10px;height:120px;margin:-120px 0 0 -5px;transform:rotate(30deg)"></div></div>
<div class="nails" style="left:470px;top:860px"><i style="height:170px;background:linear-gradient(#fdba74,#f97316)"></i><i style="height:220px;background:linear-gradient(#c4b5fd,#7c3aed)"></i><i style="height:240px;background:linear-gradient(#1e1b4b,#4c1d95)"></i><i style="height:210px;background:linear-gradient(#c4b5fd,#7c3aed)"></i><i style="height:150px;background:linear-gradient(#fdba74,#f97316)"></i></div>
<div class="swipe">desliza →</div>'''
S['post-1-2']=cnt(2)+'''<div class="hr">10:00</div>
<div class="ttl q2" style="right:420px">Primera clienta. <span class="kw hl">6 mensajes nuevos.</span></div>'''+phone(6,560)+'''
<div class="stack" style="left:80px;top:860px"><div class="bb">¿Tienes hora hoy?<small>10:04</small></div><div class="bb">¿Cuánto sale el esmaltado?<small>10:11</small></div><div class="bb">¿Hacen diseños de Halloween?<small>10:17</small></div></div>'''
S['post-1-3']=cnt(3)+'''<div class="hr">12:30</div>
<div class="ttl q2" style="right:420px">Sin almuerzo. <span class="kw hl">14 mensajes.</span></div>'''+phone(14,560)+'''
<div class="sub2" style="top:700px;right:420px">Y 3 preguntan por el sábado:</div>
<div class="stack" style="left:80px;top:830px"><div class="bb">¿Atienden el 31?<small>12:02</small></div><div class="bb">¿Abren el sábado?<small>12:19</small></div><div class="bb">¿El feriado trabajan?<small>12:27</small></div></div>'''
S['post-1-4']=cnt(4)+'''<div class="hr">15:00</div>
<div class="ttl q2">Una clienta no llega. <span class="kw hl">La hora queda vacía.</span></div>
<div class="agenda" style="top:700px">
<div class="r"><div class="t">13:30</div><div class="b">Esmaltado permanente</div></div>
<div class="r"><div class="t">15:00</div><div class="b e">Sin clienta · vacía</div></div>
<div class="r"><div class="t">16:30</div><div class="b">Uñas acrílicas</div></div>
<div class="r"><div class="t">18:00</div><div class="b">Diseño Halloween</div></div>
</div>'''
S['post-1-5']=cnt(5)+'''<div class="hr">19:30</div>
<div class="ttl q2" style="right:400px">Terminas y te quedan <span class="kw hl">22 chats</span> por responder.</div>'''+phone(22,560,680)+'''
<div class="sub2" style="top:880px;right:440px">Y mañana es viernes.</div>'''
S['post-1-6']=cnt(6)+f'''<div class="lbl t">Con Reservum</div>
<div class="ttl q" style="font-size:74px;top:255px">El mismo jueves, <span class="kw hl">sin perseguir el celular.</span></div>
<div class="tl">
<div class="r"><div class="t">10:00</div><div class="x">Los chats se responden solos.</div><i>{chk}</i></div>
<div class="r"><div class="t">12:30</div><div class="x">Las del sábado ya tienen respuesta y hora.</div><i>{chk}</i></div>
<div class="r"><div class="t">15:00</div><div class="x">La hora vacía se ofrece a otra clienta.</div><i>{chk}</i></div>
<div class="r"><div class="t">19:30</div><div class="x">Solo cierras.</div><i>{chk}</i></div>
</div>'''
S['post-1-7']=cnt(7)+f'''<div class="lbl t">Jueves resuelto</div>
<div class="ttl q" style="font-size:132px;top:270px">Tu agenda se llena <span class="kw hl">sola.</span></div>
<div class="bigb" style="top:760px"><div class="ico">{chk}</div><div class="wm">Reservum<i>.</i></div></div>
<div class="ctab" style="top:930px">reservum.cl</div>'''
# imagen: clientes fundadores
X2='''
.grid{position:absolute;left:80px;right:80px;top:640px;display:grid;grid-template-columns:repeat(5,1fr);gap:20px}
.grid div{height:160px;border-radius:30px;display:flex;align-items:center;justify-content:center}
.grid .f{background:#5b4ce6;box-shadow:0 14px 30px rgba(91,76,230,.3)}
.grid .f svg{width:96px;height:96px}
.grid .o{background:rgba(255,255,255,.55);border:5px dashed #a78bfa;color:#7c3aed;font-weight:900;font-size:64px}
.offer{position:absolute;left:80px;right:80px;top:1020px;display:flex;gap:20px}
.offer div{flex:1;background:#fff;border-radius:30px;padding:24px 28px;box-shadow:0 14px 34px rgba(30,27,75,.1)}
.offer b{display:block;font-weight:900;font-size:70px;letter-spacing:-0.04em;color:#5b21b6;line-height:1}
.offer span{display:block;font-size:32px;font-weight:700;margin-top:8px;color:#374151;line-height:1.2}
.dm{position:absolute;right:80px;bottom:56px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:30px}
'''
W='fill="none" stroke="#fff" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"'
IC={
'tijera':f'<svg viewBox="0 0 100 100" {W}><circle cx="28" cy="72" r="12"/><circle cx="72" cy="72" r="12"/><path d="M36 63 74 18M64 63 26 18"/></svg>',
'diente':f'<svg viewBox="0 0 100 100" {W}><path d="M30 18c-14 0-18 16-14 30 3 10 6 18 8 34 1 6 9 6 10 0l5-20c2-6 8-6 10 0l5 20c1 6 9 6 10 0 2-16 5-24 8-34 4-14 0-30-14-30-8 0-12 4-14 4s-6-4-14-4z"/></svg>',
'pata':'<svg viewBox="0 0 100 100" fill="#fff"><ellipse cx="50" cy="68" rx="20" ry="16"/><ellipse cx="24" cy="44" rx="9" ry="12"/><ellipse cx="40" cy="28" rx="9" ry="12"/><ellipse cx="60" cy="28" rx="9" ry="12"/><ellipse cx="76" cy="44" rx="9" ry="12"/></svg>',
'pesa':f'<svg viewBox="0 0 100 100" {W}><path d="M30 50h40"/><rect x="16" y="32" width="14" height="36" rx="4"/><rect x="70" y="32" width="14" height="36" rx="4"/><path d="M10 42v16M90 42v16"/></svg>',
'unas':f'<svg viewBox="0 0 100 100" {W}><rect x="34" y="40" width="32" height="46" rx="8"/><path d="M42 40V26h16v14M46 26V12h8v14"/></svg>',
}
cells=''.join(f'<div class="f">{IC[k]}</div>' for k in ['tijera','diente','pata','pesa','unas'])+''.join(f'<div class="o">{i}</div>' for i in range(6,11))
S2=f'''<div class="lbl t">Clientes fundadores</div>
<div class="ttl q" style="font-size:108px;top:255px">Buscamos 10 negocios, <span class="kw hl" style="white-space:nowrap">no mil.</span></div>
<div class="grid">{cells}</div>
<div class="offer"><div><b>50%</b><span>de descuento el primer mes</span></div><div><b>25%</b><span>de descuento de por vida</span></div></div>
<div class="sub2" style="top:1230px;font-size:34px;right:420px">A cambio: tu testimonio honesto.</div>
<div class="dm">escríbenos FUNDADOR</div>'''
for k,v in S.items(): open(k+'.html','w').write(page(v,X))
open('post-2-1.html','w').write(page(S2,X2))
# portadas 1080x1920
CV=css+'''.abs{position:absolute;left:80px;right:140px}
.cta{display:inline-flex;background:#5b4ce6;color:#fff;font-weight:800;font-size:50px;padding:24px 44px;border-radius:999px}
.web{position:absolute;right:-30px;top:150px;width:340px;opacity:.16}
.vs{display:flex;gap:24px}
.vs div{flex:1;border-radius:40px;padding:34px 30px}
.vs .n{background:#e5e7eb}.vs .s{background:#5b4ce6;color:#fff}
.vs b{display:block;font-weight:900;font-size:150px;letter-spacing:-0.06em;line-height:1}
.vs .n b{color:#6b7280}
.vs span{display:block;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;letter-spacing:.1em;margin-top:10px}
.notif{display:flex;gap:22px;align-items:center;background:#fff;border-radius:34px;padding:26px 30px;box-shadow:0 18px 40px rgba(30,27,75,.15)}
.notif .ic{width:80px;height:80px;border-radius:22px;background:#5b4ce6;flex:none;display:flex;align-items:center;justify-content:center}
.notif .ic svg{width:48px;height:48px}
.notif .h{font-family:"DejaVu Sans Mono",monospace;font-size:28px;color:#6b7280;font-weight:700}
.notif .b{font-size:44px;font-weight:800;color:#111;line-height:1.15;margin-top:4px}'''
def cover(body):
    return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{CV}</style></head><body><div id="root"><div class="bg"></div>{BR}{body}<div class="foot">reservum.cl</div></div></body></html>'
c1=WEB.replace('class="web"','class="web" style="right:-30px;top:150px;width:340px"')+'''<div class="lbl abs" style="top:430px">Jueves de Halloween</div>
<div class="ttl abs" style="top:500px;font-size:128px">31 chats, <span class="kw hl">mismo jueves.</span></div>
<div class="abs vs" style="top:1010px"><div class="n"><b>4</b><span>SIN RESERVUM</span></div><div class="s"><b>31</b><span>CON RESERVUM</span></div></div>
<div class="abs" style="top:1340px"><span class="cta">¿Cuál es tu jueves?</span></div>'''
c2=f'''<div class="lbl abs" style="top:430px">Salón de uñas · 3 semanas después</div>
<div class="ttl abs" style="top:500px;font-size:170px">Te toca <span class="kw hl">retoque.</span></div>
<div class="abs notif" style="top:960px"><div class="ic">{chk}</div><div><div class="h">WHATSAPP · AHORA</div><div class="b">Hola Fran, ya van 3 semanas. ¿Agendamos tu retoque?</div></div></div>
<div class="abs" style="top:1300px"><span class="cta">La clienta vuelve sola</span></div>'''
open('reel-1-portada.html','w').write(cover(c1)); open('reel-2-portada.html','w').write(cover(c2))
