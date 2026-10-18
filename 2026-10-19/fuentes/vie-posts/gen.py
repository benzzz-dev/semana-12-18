exec(open('base.py').read())
X='''
.step{position:absolute;left:80px;right:80px;top:255px;font-size:92px}
.box{position:absolute;left:80px;right:80px}
.note{position:absolute;left:80px;right:80px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:28px;color:#6d28d9;letter-spacing:.06em;line-height:1.4}
.wk{display:grid;grid-template-columns:repeat(7,1fr);gap:12px}
.wk div{height:150px;border-radius:22px;background:rgba(255,255,255,.7);border:3px solid #ddd6fe;display:flex;flex-direction:column;align-items:center;justify-content:center;font-weight:900;font-size:52px;letter-spacing:-0.03em}
.wk div span{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:22px;letter-spacing:.08em;color:#6d28d9}
.wk div.f{background:#5b4ce6;border-color:#5b4ce6;color:#fff}
.wk div.f span{color:#ddd6fe}
.tag{display:inline-block;background:#e11d48;color:#fff;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;letter-spacing:.14em;padding:10px 22px;border-radius:12px}
.date{width:360px;border-radius:40px;background:#fff;box-shadow:0 20px 50px rgba(30,27,75,.14);overflow:hidden;text-align:center}
.date .m{background:#5b4ce6;color:#fff;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:40px;letter-spacing:.14em;padding:22px 0}
.date .d{font-weight:900;font-size:220px;letter-spacing:-0.06em;line-height:1.05;padding:10px 0 20px;color:#1e1b4b}
.cal{display:grid;grid-template-columns:130px 1fr;gap:14px;align-items:center}
.cal .hr{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;opacity:.7}
.slot{height:80px;border-radius:20px;background:#5b4ce6;color:#fff;display:flex;align-items:center;padding-left:24px;font-weight:800;font-size:32px}
.slot.e{background:repeating-linear-gradient(135deg,#e2e8f0 0 14px,#f1f5f9 14px 28px);border:3px dashed #94a3b8;color:#475569;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:28px;letter-spacing:.08em}
.gray{color:#94a3b8}
'''
def cnt(i,N): return f'<div class="counter">{i}/{N}</div>'
PK='<svg width="{s}" height="{s}" viewBox="0 0 100 100" fill="none" stroke="#f97316" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"><path d="M50 26c-6-10 2-16 8-16"/><ellipse cx="50" cy="60" rx="38" ry="30"/><path d="M50 30c-12 0-16 14-16 30s4 30 16 30M50 30c12 0 16 14 16 30s-4 30-16 30"/></svg>'
logo='<div style="position:absolute;left:80px;top:{t}px;display:flex;align-items:center;gap:22px"><div style="width:110px;height:110px;border-radius:28px;background:#5b4ce6;display:flex;align-items:center;justify-content:center">'+chk.replace('<svg ','<svg width="64" height="64" ')+'</div><div style="font-weight:800;font-size:80px;letter-spacing:-0.03em">Reservum<i style="font-style:normal;color:#5b4ce6">.</i></div></div>'
pages={}
# ---------- Carrusel 1: feriados ----------
N=5
days=[('LUN','26',0),('MAR','27',0),('MIÉ','28',0),('JUE','29',0),('VIE','30',0),('SÁB','31',1),('DOM','1',1)]
wk='<div class="box wk" style="top:{t}px">'+''.join(f'<div class="{"f" if f else ""}"><span>{a}</span>{d}</div>' for a,d,f in days)+'</div>'
pages['post-1-1']=page(cnt(1,N)+'<div class="lbl t">Feriados · 31 y 1</div><div class="ttl q" style="font-size:96px">El 31 es feriado. Ya te están preguntando si <span class="kw hl">atiendes.</span></div>'
 +wk.format(t=760)+'<div class="box" style="top:950px;display:flex;justify-content:flex-end;gap:12px;padding-right:0"><span class="tag">FERIADO</span><span class="tag">FERIADO</span></div><div class="swipe">desliza →</div>',X)
pages['post-1-2']=page(cnt(2,N)+'<div class="lbl t">Sábado 31</div><div class="ttl q" style="font-size:90px">Día de las Iglesias Evangélicas <span class="kw hl">y Halloween</span></div>'
 +f'<div class="box" style="top:700px;display:flex;align-items:flex-end;gap:50px"><div class="date"><div class="m">SÁB · OCT</div><div class="d">31</div></div><div style="display:flex;flex-direction:column;gap:30px;align-items:flex-start"><span class="tag">FERIADO</span>{PK.format(s=170)}</div></div>',X)
pages['post-1-3']=page(cnt(3,N)+'<div class="lbl t">Domingo 1</div><div class="ttl q" style="font-size:120px">Todos los <span class="kw hl">Santos</span></div>'
 +'<div class="box" style="top:560px;display:flex;align-items:flex-end;gap:50px"><div class="date"><div class="m">DOM · NOV</div><div class="d">1</div></div><div style="display:flex;flex-direction:column;gap:20px"><span class="tag" style="align-self:flex-start">FERIADO</span></div></div><div class="note" style="top:1050px">SEGUNDO FERIADO SEGUIDO:<br>DOS DÍAS DE PREGUNTAS EN WHATSAPP.</div>',X)
pages['post-1-4']=page(cnt(4,N)+'<div class="lbl t">Plantilla</div><div class="ttl q" style="font-size:88px">Cópiala y ajusta <span class="kw hl">tu horario</span></div>'
 +'<div class="chat" style="top:520px"><div class="msg in">¿Atienden el 31?<small>19:12</small></div><div class="msg out">Sí, atendemos el sábado 31 de 10:00 a 15:00. Reserva aquí 👇<div class="chips"><span class="chip f">Reservar hora</span></div><small>19:12 ✓✓</small></div></div><div class="note" style="top:1080px">CAMBIA EL HORARIO POR EL TUYO<br>Y DÉJALA COMO RESPUESTA AUTOMÁTICA.</div>',X)
pages['post-1-5']=page(cnt(5,N)+'<div class="lbl t">Antes del 31</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:260px;font-size:104px">Decide hoy tu horario y que el WhatsApp <span class="kw hl">lo diga por ti.</span></div><div style="position:absolute;left:80px;right:80px;top:820px;font-size:48px;font-weight:700;line-height:1.25">Tu WhatsApp se contesta solo. Tu agenda se llena sola.</div>'+logo.format(t=1000),X)
# ---------- Carrusel 2: historia ----------
N=6
desk='''<svg width="760" height="420" viewBox="0 0 380 210" fill="none" stroke-linecap="round" stroke-linejoin="round">
<rect x="10" y="120" width="360" height="80" rx="14" fill="#fff" stroke="#1e1b4b" stroke-width="4"/>
<rect x="10" y="108" width="360" height="18" rx="8" fill="#c4b5fd" stroke="#1e1b4b" stroke-width="4"/>
<rect x="60" y="40" width="70" height="70" rx="10" fill="#f6e6f1" stroke="#1e1b4b" stroke-width="4"/><path d="M95 52v46M78 64c10 8 24 8 34 0" stroke="#1e1b4b" stroke-width="4"/>
<rect x="230" y="38" width="56" height="72" rx="10" fill="#1e1b4b"/><rect x="236" y="46" width="44" height="54" rx="5" fill="#5b4ce6"/><path d="M248 74l7 7 13-14" stroke="#fff" stroke-width="5"/>
<circle cx="288" cy="40" r="15" fill="#e11d48"/><text x="288" y="46" font-family="Inter" font-weight="900" font-size="18" fill="#fff" text-anchor="middle" stroke="none">9</text>
<path d="M300 104l40-30M330 104l-14-30" stroke="#6d28d9" stroke-width="5"/><circle cx="296" cy="106" r="8" stroke="#6d28d9" stroke-width="4"/><circle cx="334" cy="106" r="8" stroke="#6d28d9" stroke-width="4"/>
</svg>'''
pages['post-2-1']=page(cnt(1,N)+'<div class="lbl t">Nuestra historia</div><div class="ttl q" style="font-size:130px">Por qué hicimos <span class="kw hl">Reservum</span></div>'
 +f'<div class="box" style="top:700px">{desk}</div><div class="swipe">desliza →</div>',X)
hands='''<svg width="620" height="400" viewBox="0 0 310 200" fill="none" stroke-linecap="round" stroke-linejoin="round">
<path d="M20 120l50-60M60 120L40 60" stroke="#6d28d9" stroke-width="7"/><circle cx="16" cy="126" r="14" stroke="#6d28d9" stroke-width="6"/><circle cx="64" cy="126" r="14" stroke="#6d28d9" stroke-width="6"/>
<path d="M10 170c30-20 60-20 90 0" stroke="#1e1b4b" stroke-width="6"/>
<rect x="170" y="30" width="90" height="150" rx="16" fill="#1e1b4b"/><rect x="178" y="42" width="74" height="122" rx="9" fill="#efeae2"/>
<rect x="186" y="56" width="50" height="16" rx="8" fill="#fff"/><rect x="186" y="80" width="56" height="16" rx="8" fill="#fff"/><rect x="186" y="104" width="44" height="16" rx="8" fill="#fff"/><rect x="186" y="128" width="54" height="16" rx="8" fill="#fff"/>
<circle cx="262" cy="34" r="20" fill="#e11d48"/><text x="262" y="42" font-family="Inter" font-weight="900" font-size="22" fill="#fff" text-anchor="middle">14</text>
<path d="M150 190c20-14 50-16 80-6" stroke="#1e1b4b" stroke-width="6"/>
</svg>'''
pages['post-2-2']=page(cnt(2,N)+'<div class="lbl t">Lo que vimos · 1</div><div class="ttl q" style="font-size:86px">Vimos a dueños contestando WhatsApp con las <span class="kw hl">manos ocupadas</span></div>'
 +f'<div class="box" style="top:720px">{hands}</div>',X)
cal=''.join(f'<div class="hr">{h}</div><div class="slot{" e" if e else ""}">{t}</div>' for h,t,e in [('10:00','Corte',0),('11:00','HORA VACÍA',1),('12:00','Color',0),('15:00','HORA VACÍA',1),('16:00','Corte y barba',0)])
pages['post-2-3']=page(cnt(3,N)+'<div class="lbl t">Lo que vimos · 2</div><div class="ttl q" style="font-size:86px">Vimos horas vacías porque nadie mandó un <span class="kw hl">recordatorio</span></div>'
 +f'<div class="box cal" style="top:690px">{cal}</div>',X)
pages['post-2-4']=page(cnt(4,N)+'<div class="lbl t">Lo que vimos · 3</div><div class="ttl q" style="font-size:86px">Vimos clientes que se iban porque nadie <span class="kw hl">respondió a tiempo</span></div>'
 +'<div class="chat" style="top:600px"><div class="msg out">Hola, ¿tienes hora para hoy en la tarde?<small>11:02 <span class="gray">✓✓</span></small></div><div class="msg out">¿Hola?<small>12:40 <span class="gray">✓✓</span></small></div><div class="msg out">Ya, gracias, encontré en otro lado.<small>14:15 <span class="gray">✓✓</span></small></div></div><div class="note" style="top:1110px">3 HORAS SIN RESPUESTA</div>',X)
rep=''.join(f'<div class="msg in" style="margin-left:{m}px">{t}<small>{h}</small></div>' for m,t,h in [(0,'¿Tienes hora mañana?','09:14'),(60,'¿Cuánto sale el corte?','09:31'),(0,'¿Tienes hora mañana?','10:02'),(60,'¿Dónde están ubicados?','10:20')])
pages['post-2-5']=page(cnt(5,N)+'<div class="lbl t">Lo que vimos · 4</div><div class="ttl q" style="font-size:90px">Y vimos que casi todos esos mensajes eran <span class="kw hl">iguales</span></div>'
 +f'<div class="chat" style="top:640px;gap:14px">{rep}</div>',X)
pages['post-2-6']=page(cnt(6,N)+'<div class="lbl t">Por eso</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:260px;font-size:110px">Tu WhatsApp se contesta solo. Tu agenda se llena <span class="kw hl">sola.</span></div>'
 +logo.format(t=880)+'<div style="position:absolute;left:80px;top:1060px"><span class="chip f" style="font-size:44px;padding:16px 36px">Síguenos</span></div>',X)
# ---------- Portadas ----------
C=css+'html,body{height:1920px}.brand{top:300px}.foot{bottom:300px}.lbl{position:absolute;left:80px;top:470px;font-size:36px}.ttl{position:absolute;left:80px;right:100px;top:540px}'
def cover(lbl,t,fs=140,extra='',dark=False):
    d='' if not dark else '#root .bg{background:linear-gradient(170deg,#1e1b4b 0%,#14112f 60%,#0b0920 100%)}.wm,.foot{color:#fff!important}.wm i{color:#a78bfa!important}.ttl{color:#fff}.lbl{color:#c4b5fd}'
    return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{C}{d}</style></head><body><div id="root"><div class="bg"></div>{BR}<div class="lbl">{lbl}</div><div class="ttl" style="font-size:{fs}px">{t}</div>{extra}<div class="foot">reservum.cl</div></div></body></html>'
dots=''.join('<div style="width:110px;height:110px;border-radius:50%;background:#5b4ce6"></div>' for _ in range(12))
pages['reel-1-portada']=cover('Funcional · 19:00','<span class="kw hl">12 cupos,</span><br>4 minutos',150,f'<div style="position:absolute;left:80px;top:1000px;display:grid;grid-template-columns:repeat(6,110px);gap:24px">{dots}</div>')
pages['reel-2-portada']=cover('Viernes, 22:30','Viernes 22:30. <span style="color:#c4b5fd">¿Quién agenda el sábado?</span>',130,'',True)
for k,v in pages.items(): open(k+'.html','w').write(v)
