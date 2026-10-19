import sys
sys.path.insert(0,'.')
from base import page, css, chk, BR
X='''
.big{position:absolute;left:80px;right:80px;top:200px}
.note{position:absolute;left:80px;right:80px;font-size:40px;font-weight:600;line-height:1.3;color:#374151}
.door{position:absolute;left:80px;top:610px;width:420px;height:590px;border-radius:26px 26px 0 0;background:linear-gradient(180deg,#a78bfa,#8b5cf6);box-shadow:0 24px 50px rgba(30,27,75,.18)}
.door::before{content:"";position:absolute;left:36px;right:36px;top:36px;height:250px;border-radius:14px;background:rgba(255,255,255,.35)}
.door .knob{position:absolute;right:34px;top:330px;width:30px;height:30px;border-radius:50%;background:#fde68a}
.sign{position:absolute;left:60px;top:110px;width:300px;transform:rotate(-6deg);transform-origin:50% -60px}
.sign .str{position:absolute;left:50%;top:-70px;width:150px;height:80px;margin-left:-75px;border:4px solid #1e1b4b;border-bottom:0;border-radius:75px 75px 0 0;clip-path:polygon(0 0,100% 0,100% 100%,0 100%)}
.sign .pl{background:#fff;border:6px solid #dc2626;border-radius:16px;padding:22px 0;text-align:center;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:46px;color:#dc2626;letter-spacing:.1em}
.sign .hr{text-align:center;font-family:"DejaVu Sans Mono",monospace;font-size:22px;color:#1e1b4b;margin-top:8px;font-weight:700}
.phone{position:absolute;left:560px;top:580px;width:440px;height:620px;border-radius:64px;background:#1e1b4b;padding:18px;box-shadow:0 30px 60px rgba(30,27,75,.3)}
.scr{width:100%;height:100%;border-radius:48px;background:linear-gradient(180deg,#312e81,#5b4ce6);padding:70px 18px 18px;position:relative}
.scr .tm{position:absolute;left:0;right:0;top:56px;text-align:center;color:#fff;font-weight:300;font-size:84px;letter-spacing:-0.02em}
.scr .dt{position:absolute;left:0;right:0;top:30px;text-align:center;color:#e0e7ff;font-size:22px;font-weight:600}
.nt{background:rgba(255,255,255,.92);border-radius:22px;padding:12px 16px;margin-bottom:10px;display:flex;gap:12px;align-items:center}
.nt .wa{width:42px;height:42px;border-radius:11px;background:#128c4a;flex:none;color:#fff;font-weight:900;font-size:22px;display:flex;align-items:center;justify-content:center}
.nt .h{font-family:"DejaVu Sans Mono",monospace;font-size:16px;color:#555;font-weight:700}
.nt .b{font-size:22px;font-weight:700;color:#111;line-height:1.15}
.badge{position:absolute;right:-18px;top:-18px;width:76px;height:76px;border-radius:50%;background:#dc2626;color:#fff;font-weight:900;font-size:42px;display:flex;align-items:center;justify-content:center;border:5px solid #fff}
.circles{position:absolute;left:80px;right:80px;display:grid;grid-template-columns:repeat(5,1fr);gap:28px;justify-items:center}
.circles i{width:150px;height:150px;border-radius:50%;border:8px solid #5b4ce6;background:rgba(255,255,255,.6);display:flex;align-items:center;justify-content:center;font-style:normal;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:44px;color:#6d28d9}
.circles i.on{background:#5b4ce6;color:#fff;box-shadow:0 14px 30px rgba(91,76,230,.4)}
.step{font-weight:900;letter-spacing:-0.05em;font-size:150px;line-height:.9;color:#5b21b6}
.tagp{position:absolute;display:flex;align-items:center;justify-content:center;flex-direction:column;width:440px;height:440px;border-radius:60px;background:#5b4ce6;color:#fff;transform:rotate(-6deg);box-shadow:0 30px 60px rgba(91,76,230,.35)}
.tagp b{font-weight:900;font-size:190px;letter-spacing:-0.05em;line-height:1}
.tagp span{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:34px;letter-spacing:.12em}
.tagp::before{content:"";position:absolute;left:50%;top:34px;width:44px;height:44px;margin-left:-22px;border-radius:50%;background:#ece8fd}
.dm{position:absolute;left:80px;right:80px;background:#fff;border-radius:40px;padding:30px;box-shadow:0 24px 60px rgba(30,27,75,.12)}
.dm .top{display:flex;align-items:center;gap:16px;font-weight:800;font-size:34px;padding-bottom:16px;border-bottom:2px solid #eee;margin-bottom:22px}
.dm .av{width:64px;height:64px;border-radius:50%;background:#5b4ce6;display:flex;align-items:center;justify-content:center}
.dm .av svg{width:38px;height:38px}
.dm .bub{margin-left:auto;width:max-content;background:linear-gradient(90deg,#7c3aed,#5b4ce6);color:#fff;font-weight:900;font-size:64px;letter-spacing:.02em;padding:22px 44px;border-radius:44px 44px 10px 44px}
.dm .in{background:#f1f0f7;font-size:36px;font-weight:600;padding:20px 28px;border-radius:36px 36px 36px 10px;width:max-content;max-width:90%;margin-top:18px;line-height:1.25}
'''
def cnt(i): return f'<div class="counter">{i}/5</div>'
S={}
S['post-1-1']='''<div class="lbl t">Domingo · 10:47</div>
<div class="ttl q" style="font-size:80px">Es domingo. Tu local está cerrado. <span class="kw hl">¿Tu WhatsApp también?</span></div>
<div class="door"><div class="knob"></div><div class="sign"><div class="str"></div><div class="pl">CERRADO</div><div class="hr">ABRIMOS LUNES 10:00</div></div></div>
<div class="phone"><div class="scr"><div class="dt">domingo 25 de octubre</div><div class="tm">10:47</div><div style="height:130px"></div>
<div class="nt"><div class="wa">W</div><div><div class="h">Cata · ahora</div><div class="b">¿Tienes hora el lunes?</div></div></div>
<div class="nt"><div class="wa">W</div><div><div class="h">Nico · 3 min</div><div class="b">¿A qué hora abren mañana?</div></div></div>
<div class="nt"><div class="wa">W</div><div><div class="h">Vale · 12 min</div><div class="b">¿Cuánto sale el corte?</div></div></div>
<div class="nt"><div class="wa">W</div><div><div class="h">Tomás · 25 min</div><div class="b">Necesito hora para el martes</div></div></div>
</div><div class="badge">4</div></div>'''
circ=lambda on: '<div class="circles" style="top:%dpx">'%on[1]+''.join(f'<i class="{"on" if k<on[0] else ""}">{k+1}</i>' for k in range(10))+'</div>'
S['post-2-1']=cnt(1)+'''<div class="lbl t">Programa · 10 cupos</div>
<div class="ttl q" style="font-size:112px">Clientes <span class="kw hl">fundadores</span> Reservum: cómo funciona</div>'''+circ((0,820))+'<div class="swipe">desliza →</div>'
S['post-2-2']=cnt(2)+'''<div class="lbl t">Paso 1</div><div class="step" style="position:absolute;left:80px;top:250px">1.</div>
<div class="ttl q" style="top:420px;font-size:96px">Te sumas como uno de los <span class="kw hl">10 fundadores</span></div>'''+circ((1,860))
S['post-2-3']=cnt(3)+'''<div class="lbl t">Paso 2</div><div class="step" style="position:absolute;left:80px;top:250px">2.</div>
<div class="ttl q" style="top:420px;font-size:104px">Primer mes a <span class="kw hl">mitad de precio</span></div>
<div class="tagp" style="left:320px;top:720px"><b>50%</b><span>PRIMER MES</span></div>'''
S['post-2-4']=cnt(4)+'''<div class="lbl t">Paso 3</div><div class="step" style="position:absolute;left:80px;top:250px">3.</div>
<div class="ttl q" style="top:420px;font-size:104px">25% de descuento <span class="kw hl">de por vida</span></div>
<div class="tagp" style="left:320px;top:720px;transform:rotate(5deg);background:#1e1b4b"><b>25%</b><span>PARA SIEMPRE ∞</span></div>'''
S['post-2-5']=cnt(5)+'''<div class="lbl t">Paso 4</div><div class="step" style="position:absolute;left:80px;top:250px">4.</div>
<div class="ttl q" style="top:420px;font-size:72px;line-height:1.04">Después de usarlo, nos das tu <span class="kw hl">testimonio honesto</span>. Escribe FUNDADOR por DM.</div>
<div class="dm" style="top:790px"><div class="top"><div class="av">'''+chk+'''</div>reservum.cl</div>
<div class="bub">FUNDADOR</div><div class="in">¡Bienvenido! Te contamos los detalles por aquí.</div></div>'''
for k,v in S.items(): open(k+'.html','w').write(page(v,X))
CV=css+'''.abs{position:absolute;left:80px;right:140px}
.cta{display:inline-flex;background:#5b4ce6;color:#fff;font-weight:800;font-size:46px;padding:22px 40px;border-radius:999px}
.dots{display:flex;gap:18px}.dots i{width:110px;height:110px;border-radius:50%;background:#5b4ce6;display:flex;align-items:center;justify-content:center;color:#fff;font-style:normal;font-weight:900;font-size:60px}
.d{display:inline-block;background:#1e1b4b;color:#fff;border-radius:24px;padding:16px 26px;margin-right:16px}.d s{display:block;text-decoration:none;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:28px;color:#c4b5fd}.d b{font-weight:900;font-size:90px;letter-spacing:-0.04em;line-height:1}'''
def cover(body):
    return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{CV}</style></head><body><div id="root"><div class="bg"></div>{BR}{body}<div class="foot">reservum.cl</div></div></body></html>'
c1='''<div class="lbl abs" style="top:420px">Domingo · lista rápida</div>
<div class="ttl abs" style="top:490px;font-size:150px"><span class="kw hl">3 mensajes</span> que nunca más vas a escribir</div>
<div class="abs dots" style="top:1180px"><i>1</i><i>2</i><i>3</i></div>
<div class="abs" style="top:1340px"><span class="cta">Recordar · Agendar · Reagendar</span></div>'''
c2='''<div class="lbl abs" style="top:420px">26 oct – 1 nov</div>
<div class="ttl abs" style="top:490px;font-size:120px"><span class="kw hl">Halloween</span> + 2 feriados. ¿Tu WhatsApp está listo?</div>
<div class="abs" style="top:1180px"><div class="d"><s>SÁB</s><b>31</b></div><div class="d"><s>DOM</s><b>1</b></div></div>'''
open('reel-1-portada.html','w').write(cover(c1)); open('reel-2-portada.html','w').write(cover(c2))
