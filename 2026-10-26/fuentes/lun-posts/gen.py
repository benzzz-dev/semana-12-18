import sys
sys.path.insert(0,'.')
from base import page, css, chk, BR
X='''
.big{position:absolute;left:80px;right:80px;top:250px}
.note{position:absolute;left:80px;right:80px;font-size:40px;font-weight:600;line-height:1.3;color:#374151}
.wk{position:absolute;left:80px;right:80px;display:grid;grid-template-columns:repeat(7,1fr);gap:12px}
.d{background:rgba(255,255,255,.75);border-radius:22px;padding:14px 8px 10px;box-shadow:0 10px 24px rgba(30,27,75,.08);display:flex;flex-direction:column;align-items:center;gap:8px;position:relative}
.d h5{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:28px;color:#1e1b4b;letter-spacing:.04em}
.d em{font-style:normal;font-weight:900;font-size:44px;color:#1e1b4b;letter-spacing:-0.03em}
.d .b{width:100%;height:30px;border-radius:12px;background:#ece9fe}
.d .b.on{background:#5b4ce6}
.d.fer{background:#ede9fe;outline:4px dashed #a78bfa}
.d.dim{opacity:.35}
.d .ft{font-family:"DejaVu Sans Mono",monospace;font-size:20px;font-weight:700;color:#6d28d9;letter-spacing:.06em}
.peak{position:absolute;top:-26px;left:50%;transform:translateX(-50%);background:#1e1b4b;color:#fff;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:24px;letter-spacing:.12em;padding:6px 14px;border-radius:10px}
.bub{position:absolute;background:#fff;border-radius:26px 26px 26px 8px;padding:16px 22px;font-size:34px;font-weight:700;box-shadow:0 12px 26px rgba(30,27,75,.14);display:flex;gap:12px;align-items:center}
.bub i{font-style:normal;width:44px;height:44px;border-radius:12px;background:#128c4a;color:#fff;font-weight:900;font-size:26px;display:flex;align-items:center;justify-content:center;flex:none}
.tick{color:#53bdeb}
.dict{position:absolute;left:80px;right:80px;top:520px;display:flex;flex-direction:column;gap:30px}
.pair{display:grid;grid-template-columns:1fr 70px 1.25fr;align-items:center}
.pair .l{background:#fff;border-radius:30px 30px 30px 8px;padding:24px 26px;font-size:42px;font-weight:700;color:#4b5563;box-shadow:0 8px 20px rgba(30,27,75,.08)}
.pair .r{background:#5b4ce6;border-radius:30px 30px 8px 30px;padding:24px 26px;font-size:42px;font-weight:800;color:#fff;box-shadow:0 12px 26px rgba(91,76,230,.3)}
.pair .ar{text-align:center;font-size:52px;font-weight:900;color:#6d28d9}
.hd{display:grid;grid-template-columns:1fr 70px 1.25fr;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:28px;color:#6d28d9;letter-spacing:.12em;text-transform:uppercase}
'''
D=[('LUN','26'),('MAR','27'),('MIÉ','28'),('JUE','29'),('VIE','30'),('SÁB','31'),('DOM','1')]
def week(top, fill, dim=(), fer=(5,6), peak=()):
    h=f'<div class="wk" style="top:{top}px">'
    for i,(a,b) in enumerate(D):
        cls='d'+(' fer' if i in fer else '')+(' dim' if i in dim else '')
        bl=''.join(f'<div class="b{" on" if k<fill[i] else ""}"></div>' for k in range(6))
        h+=f'<div class="{cls}">{"<div class=peak>PEAK</div>" if i in peak else ""}<h5>{a}</h5><em>{b}</em>{bl}{"<div class=ft>FERIADO</div>" if i in fer else ""}</div>'
    return h+'</div>'
def cnt(i): return f'<div class="counter">{i}/6</div>'
S={}
S['post-1-1']=cnt(1)+'''<div class="lbl t">Semana del 26 oct al 1 nov</div>
<div class="ttl q" style="font-size:80px">Esta semana tiene 5 días hábiles y <span class="kw hl">2 feriados.</span> Así se reparte tu agenda.</div>'''+week(620,[0]*7)+'<div class="swipe">desliza →</div>'
S['post-1-2']=cnt(2)+'''<div class="lbl t">Lunes y martes</div>
<div class="ttl q" style="font-size:82px">Se llenan las horas que <span class="kw hl">nadie pidió</span> el fin de semana.</div>'''+week(640,[5,4,0,0,0,0,0],dim=(2,3,4,5,6))+'<div class="note" style="top:1060px">Las consultas del sábado y domingo se responden el lunes… si alguien las responde.</div>'
S['post-1-3']=cnt(3)+'''<div class="lbl t">Miércoles</div>
<div class="ttl q" style="font-size:84px">Último día tranquilo. Úsalo para <span class="kw hl">confirmar.</span></div>'''+week(600,[5,4,2,0,0,0,0],dim=(0,1,3,4,5,6))+'''
<div class="bub" style="left:80px;top:1010px;border-radius:26px 26px 8px 26px;background:#d9fdd3">Confirmo tu hora del jueves 17:00 <span class="tick">✓✓</span></div>
<div class="bub" style="left:80px;top:1110px">Sí, ahí estaré</div>'''
S['post-1-4']=cnt(4)+'''<div class="lbl t">Jueves y viernes</div>
<div class="ttl q" style="font-size:84px">El peak. Todos quieren hora <span class="kw hl">antes del feriado.</span></div>'''+week(640,[5,4,2,6,6,0,0],dim=(0,1,2,5,6),peak=(3,4))+'<div class="note" style="top:1060px">Si no contestas rápido, esa hora se la queda otro negocio.</div>'
S['post-1-5']=cnt(5)+'''<div class="lbl t">Sábado 31 y domingo 1</div>
<div class="ttl q" style="font-size:72px">Tú descansas o atiendes medio día. Las consultas <span class="kw hl">siguen llegando igual.</span></div>'''+week(680,[5,4,2,6,6,0,0],dim=(0,1,2,3,4))+'''
<div class="bub" style="left:560px;top:570px"><i>W</i>¿Atienden el 31?</div>
<div class="bub" style="left:500px;top:1080px"><i>W</i>¿Tienes hora el lunes?</div>'''
S['post-1-6']=cnt(6)+'''<div class="lbl t">Con Reservum</div>
<div class="ttl q" style="font-size:80px">Cada consulta del fin de semana queda agendada para el <span class="kw hl" style="white-space:nowrap">lunes 2.</span></div>
<div style="position:absolute;left:80px;top:800px;display:flex;align-items:center;gap:26px"><div style="width:120px;height:120px;border-radius:32px;background:#5b4ce6;display:flex;align-items:center;justify-content:center"><div style="width:72px;height:72px">'''+chk+'''</div></div><div style="font-weight:900;font-size:110px;letter-spacing:-0.04em">Reservum<span style="color:#5b4ce6">.</span></div></div>
<div class="note" style="top:1000px">Tu WhatsApp se contesta solo. Tu agenda se llena sola.</div>
<div class="note" style="top:1110px;font-family:'DejaVu Sans Mono',monospace;color:#6d28d9;font-size:34px;font-weight:700">Guárdalo para organizar la semana.</div>'''
S['post-2-1']='''<div class="lbl t">Diccionario de WhatsApp</div>
<div class="ttl q" style="font-size:80px">Lo que escribe tu cliente vs. <span class="kw hl">lo que quiere decir.</span></div>
<div class="dict"><div class="hd"><span>Escribe</span><span></span><span>Quiere decir</span></div>
<div class="pair"><div class="l">“¿Tienes hora?”</div><div class="ar">→</div><div class="r">“Agéndame ahora, no mañana.”</div></div>
<div class="pair"><div class="l">“¿Cuánto sale?”</div><div class="ar">→</div><div class="r">“Dime un precio y una hora.”</div></div>
<div class="pair"><div class="l">“Después te confirmo.”</div><div class="ar">→</div><div class="r">“Recuérdamelo.”</div></div></div>
<div class="note" style="top:1150px;font-family:'DejaVu Sans Mono',monospace;color:#6d28d9;font-size:32px;font-weight:700">¿Cuál agregarías tú? ↓</div>'''
for k,v in S.items(): open(k+'.html','w').write(page(v,X))
CV=css+'''.abs{position:absolute;left:80px;right:140px}
.cta{display:inline-flex;background:#5b4ce6;color:#fff;font-weight:800;font-size:46px;padding:22px 40px;border-radius:999px}'''
def cover(body):
    return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{CV}</style></head><body><div id="root"><div class="bg"></div>{BR}{body}<div class="foot">reservum.cl</div></div></body></html>'
c1='''<div class="lbl abs" style="top:420px">Lunes · 9:00</div>
<div class="abs" style="top:480px;font-weight:900;letter-spacing:-0.05em;font-size:340px;line-height:.9;color:#5b21b6">23</div>
<div class="ttl abs" style="top:800px;font-size:118px">mensajes sin leer un lunes a las <span class="kw hl">9:00</span></div>
<div class="abs" style="top:1330px"><span class="cta">¿Quién los contesta?</span></div>'''
c2='''<div class="lbl abs" style="top:420px">Maquillaje · Halloween</div>
<div class="abs" style="top:480px;font-weight:900;letter-spacing:-0.05em;font-size:340px;line-height:.9;color:#5b21b6">14</div>
<div class="ttl abs" style="top:800px;font-size:112px">“¿Me puedes hacer <span class="kw hl">este?</span>” en una tarde</div>
<div class="abs" style="top:1330px"><span class="cta">90 min · agendado solo</span></div>'''
open('reel-1-portada.html','w').write(cover(c1)); open('reel-2-portada.html','w').write(cover(c2))
