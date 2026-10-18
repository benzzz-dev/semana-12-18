import sys,subprocess
sys.path.insert(0,'.')
from base import page, css, chk, BR
X='''
.ico-x,.ico-ok{display:inline-flex;align-items:center;justify-content:center;width:96px;height:96px;border-radius:50%;color:#fff;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:60px;vertical-align:middle;margin-right:18px;position:relative;top:-8px}
.ico-x{background:#dc2626}.ico-ok{background:#16a34a}
.big{position:absolute;left:80px;right:80px;top:200px;font-size:84px}
.note{position:absolute;left:80px;right:80px;font-size:38px;font-weight:600;line-height:1.3;color:#374151}
.strike{text-decoration:line-through;text-decoration-thickness:5px;text-decoration-color:#dc2626;color:#6b7280}
.gray{background:#f3f4f6!important}
.seen{font-family:"DejaVu Sans Mono",monospace;font-size:26px;color:#6b7280;align-self:flex-end}
.tick{color:#53bdeb}
.slot{display:inline-block;background:#5b4ce6;color:#fff;font-weight:800;font-size:36px;padding:16px 26px;border-radius:999px;margin:8px 12px 0 0}
.poll{position:absolute;left:80px;right:80px;top:590px;display:flex;flex-direction:column;gap:18px}
.opt{display:flex;align-items:center;gap:26px;background:rgba(255,255,255,.85);border-radius:30px;padding:26px 30px;font-size:50px;font-weight:800;box-shadow:0 12px 30px rgba(30,27,75,.08)}
.opt b{width:84px;height:84px;flex:none;border-radius:22px;background:#5b4ce6;color:#fff;display:flex;align-items:center;justify-content:center;font-size:48px;font-weight:900}
.opt.d b{background:#1e1b4b}
'''
def cnt(i): return f'<div class="counter">{i}/6</div>'
S={}
S['post-1-1']=cnt(1)+'''<div class="lbl t">Peluquería · WhatsApp</div>
<div class="ttl q">“¿Cuánto sale?” y <span class="kw hl">nunca más</span> respondió</div>
<div class="chat" style="top:690px"><div class="msg in">Hola, ¿cuánto sale corte y color?<small>14:28</small></div>
<div class="msg out gray">Depende<small>14:31 <span class="tick">✓✓</span></small></div>
<div class="seen">Visto 14:32 · sin respuesta</div></div>
<div class="swipe">desliza →</div>'''
S['post-1-2']=cnt(2)+'''<div class="lbl t">La respuesta que pierde clientas</div>
<div class="ttl big" style="top:260px"><span class="ico-x">✕</span><span class="strike">“Depende”</span></div>
<div class="chat" style="top:520px"><div class="msg in">¿Cuánto sale corte y color?<small>14:28</small></div>
<div class="msg out gray"><span class="strike">Depende</span><small>14:31</small></div></div>
<div class="note" style="top:930px">No está mal, pero deja la conversación sin siguiente paso. La clienta no sabe si le alcanza ni cuándo ir, y le escribe a otra peluquería.</div>'''
S['post-1-3']=cnt(3)+'''<div class="lbl t">Paso 1 · precio claro</div>
<div class="ttl big" style="top:260px;font-size:76px"><span class="ico-ok">✓</span>Da un <span class="kw hl">rango</span> de precio</div>
<div class="chat" style="top:520px"><div class="msg in">¿Cuánto sale corte y color?<small>14:28</small></div>
<div class="msg out">Corte desde $12.000, color desde $35.000. Depende del largo y del tono.<small>14:28 <span class="tick">✓✓</span></small></div></div>
<div class="note" style="top:1000px">Un “desde” responde la duda y deja espacio para el detalle.</div>'''
S['post-1-4']=cnt(4)+'''<div class="lbl t">Paso 2 · una pregunta que agenda</div>
<div class="ttl big" style="top:260px;font-size:76px"><span class="ico-ok">✓</span>Termina con <span class="kw hl">una pregunta</span></div>
<div class="chat" style="top:520px"><div class="msg out">Corte desde $12.000, color desde $35.000.<small>14:28</small></div>
<div class="msg out">¿Te muestro horas para esta semana?<small>14:28 <span class="tick">✓✓</span></small></div>
<div class="msg in">¡Sí, porfa!<small>14:29</small></div></div>
<div class="note" style="top:1100px">La conversación sigue viva y el siguiente paso es agendar.</div>'''
S['post-1-5']=cnt(5)+'''<div class="lbl t">Paso 3 · dos opciones, no veinte</div>
<div class="ttl big" style="top:260px;font-size:76px"><span class="ico-ok">✓</span>Ofrece <span class="kw hl">2 horas libres</span></div>
<div class="chat" style="top:520px"><div class="msg out">Tengo estas horas libres:<div style="margin-top:6px"><span class="slot">Jue 29 · 11:00</span><span class="slot">Vie 30 · 16:30</span></div><small>14:29 <span class="tick">✓✓</span></small></div>
<div class="msg in">El viernes 16:30 😊<small>14:30</small></div>
<div class="msg out">¡Listo! Te agendé el viernes 30 a las 16:30.<small>14:30 <span class="tick">✓✓</span></small></div></div>'''
S['post-1-6']=cnt(6)+'''<div class="lbl t">La fórmula</div>
<div class="ttl q" style="font-size:96px">Precio claro + hora libre = <span class="kw hl">clienta agendada.</span></div>
<div class="ttl" style="position:absolute;left:80px;top:800px;font-size:72px">Guárdalo.</div>
<div class="note" style="top:930px">Reservum responde así, solo, cada vez que alguien pregunta por WhatsApp.</div>
<div class="note" style="top:1150px;font-size:28px;font-family:'DejaVu Sans Mono',monospace;color:#6d28d9">* Precios de ejemplo.</div>'''
S['post-2-1']='''<div class="lbl t">Encuesta · dueños de negocios</div>
<div class="ttl q" style="font-size:82px">¿A qué hora te llega el <span class="kw hl">último WhatsApp</span> de un cliente?</div>
<div class="poll"><div class="opt"><b>A</b>Antes de las 21</div><div class="opt"><b>B</b>Entre 21 y 23</div><div class="opt"><b>C</b>Después de medianoche</div><div class="opt d"><b>D</b>No quiero hablar de eso</div></div>
<div class="swipe" style="font-size:30px">responde con la letra ↓</div>'''
for k,v in S.items():
    open(k+'.html','w').write(page(v,X))
# portadas 1080x1920
CV=css+'''.abs{position:absolute;left:80px;right:140px}
.cta{display:inline-flex;background:#5b4ce6;color:#fff;font-weight:800;font-size:46px;padding:22px 40px;border-radius:999px}'''
def cover(body,extra=''):
    return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{CV}{extra}</style></head><body><div id="root"><div class="bg"></div>{BR}{body}<div class="foot">reservum.cl</div></div></body></html>'
c1='''<div class="lbl abs" style="top:420px">Salón de uñas · Halloween</div>
<div class="ttl abs" style="top:490px;font-size:136px">Semana de <span class="kw hl">Halloween</span> en un salón de uñas</div>
<div class="abs" style="top:1120px;display:flex;gap:30px">
<div style="width:130px;height:190px;border-radius:65px 65px 30px 30px;background:repeating-radial-gradient(circle at 50% 108%,transparent 0 22px,rgba(255,255,255,.85) 22px 25px),repeating-conic-gradient(from -90deg at 50% 108%,transparent 0 13deg,rgba(255,255,255,.85) 13deg 15deg),#232136;border:5px solid #fff"></div>
<div style="width:130px;height:190px;border-radius:65px 65px 30px 30px;background:repeating-linear-gradient(90deg,#f97316 0 26px,#ea580c 26px 32px);border:5px solid #fff"></div>
<div style="width:130px;height:190px;border-radius:65px 65px 30px 30px;background:linear-gradient(180deg,#b91c1c 0 28%,#fbe4e4 28%);border:5px solid #fff"></div>
<div style="width:130px;height:190px;border-radius:65px 65px 30px 30px;background:#18181b;border:5px solid #3f3f46"></div></div>
<div class="abs" style="top:1340px"><span class="cta">38 consultas · agenda llena</span></div>'''
c2='''<div class="lbl abs" style="top:420px">Peluquería · sábado</div>
<div class="ttl abs" style="top:490px;font-size:150px">Sábado <span class="kw hl">13:00</span> en una peluquería</div>
<div class="ttl abs" style="top:1120px;font-size:72px">3 sillas ocupadas.<br><span style="color:#b91c1c">9 chats esperando.</span></div>
<div class="abs" style="top:1340px"><span class="cta">¿Quién contesta?</span></div>'''
open('reel-1-portada.html','w').write(cover(c1)); open('reel-2-portada.html','w').write(cover(c2))
