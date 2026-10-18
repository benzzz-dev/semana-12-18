import re
css=open('/home/claude/prod/shared/brand.css').read()
chk=open('/home/claude/prod/shared/check.svg').read().strip()
BR=f'<div class="brand"><div class="ico">{chk}</div><div class="wm">Reservum<i>.</i></div></div>'
P=css+'''
html,body{height:1350px}
.brand{top:70px}
.foot{bottom:64px;font-size:30px}
.counter{position:absolute;right:80px;top:88px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:32px;letter-spacing:.08em}
.swipe{position:absolute;right:80px;bottom:60px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:34px}
.lbl.t{position:absolute;left:80px;top:200px;font-size:30px}
.q{position:absolute;left:80px;right:80px;top:255px;font-size:92px}
.chat{position:absolute;left:80px;right:80px;top:560px;background:#efeae2;border-radius:44px;padding:34px 30px;display:flex;flex-direction:column;gap:20px;box-shadow:0 24px 60px rgba(30,27,75,.12)}
.msg{max-width:82%;padding:20px 28px 14px;font-size:38px;font-weight:600;line-height:1.2;color:#111;box-shadow:0 4px 10px rgba(0,0,0,.06)}
.msg small{display:block;text-align:right;font-family:"DejaVu Sans Mono",monospace;font-size:22px;color:#667;margin-top:4px;font-weight:400}
.in{align-self:flex-start;background:#fff;border-radius:30px 30px 30px 8px}
.out{align-self:flex-end;background:#d9fdd3;border-radius:30px 30px 8px 30px}
.chips{display:flex;gap:12px;flex-wrap:wrap;margin-top:12px}
.chip{background:#fff;border:3px solid #5b4ce6;color:#5b21b6;font-weight:800;font-size:32px;padding:10px 22px;border-radius:999px}
.chip.f{background:#5b4ce6;color:#fff}
.pl{display:flex;justify-content:space-between;gap:30px;font-size:36px;padding:6px 0;border-bottom:2px dashed rgba(0,0,0,.12)}
.pl:last-of-type{border-bottom:0}
.map{height:170px;border-radius:20px;margin-top:12px;position:relative;overflow:hidden;background:#e5e7eb;background-image:linear-gradient(90deg,rgba(255,255,255,.9) 14px,transparent 14px),linear-gradient(rgba(255,255,255,.9) 14px,transparent 14px);background-size:120px 120px,90px 90px;background-position:40px 0,0 30px}
.pin{position:absolute;left:46%;top:24%;width:60px;height:60px;border-radius:50% 50% 50% 0;background:#e11d48;transform:rotate(-45deg)}
.pin::after{content:"";position:absolute;left:19px;top:19px;width:22px;height:22px;border-radius:50%;background:#fff}
.lnk{color:#2563eb;font-family:"DejaVu Sans Mono",monospace;font-size:28px;font-weight:700}
.auto{position:absolute;left:80px;bottom:130px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:28px;color:#6d28d9;letter-spacing:.1em}
'''
def page(body,extra=''):
    return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{P}{extra}</style></head><body><div id="root"><div class="bg"></div>{BR}{body}<div class="foot">reservum.cl</div></div></body></html>'
pages={}
N=7
cnt=lambda i:f'<div class="counter">{i}/{N}</div>'
# 1 portada
fan=''.join(f'<div class="fb" style="top:{620+i*92}px;left:{80+i*58}px;transform:rotate({-6+i*3}deg)">{t}</div>' for i,t in enumerate(['¿Tienes hora hoy?','¿Cuánto sale?','¿Dónde quedan?','¿Hasta qué hora atienden?','¿Puedo cambiar mi hora?']))
pages['post-1-1']=page(cnt(1)+'<div class="lbl t">Guárdalo</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:255px;font-size:104px"><span class="kw hl">5 preguntas</span> que contestas 50 veces por semana</div>'+fan+'<div class="swipe">desliza →</div>',
 '.fb{position:absolute;background:#fff;border-radius:30px 30px 30px 8px;padding:20px 30px;font-size:40px;font-weight:700;box-shadow:0 12px 28px rgba(30,27,75,.12);white-space:nowrap}')
def q(i,n,txt,chat): return page(cnt(i)+f'<div class="lbl t">Pregunta {n} de 5</div><div class="ttl q">{n}. <span class="kw hl">“{txt}”</span></div><div class="chat">{chat}</div><div class="auto">RESPUESTA AUTOMÁTICA ✓</div>')
pages['post-1-2']=q(2,1,'¿Tienes hora hoy?','<div class="msg in">Hola, ¿tienes hora hoy?<small>09:14</small></div><div class="msg out">¡Hola! Hoy me quedan estas horas:<div class="chips"><span class="chip">12:30</span><span class="chip">16:00</span><span class="chip">18:30</span></div><small>09:14 ✓✓</small></div>')
pages['post-1-3']=q(3,2,'¿Cuánto sale?','<div class="msg in">¿Cuánto sale?<small>11:02</small></div><div class="msg out" style="min-width:70%">Estos son nuestros precios:<div class="pl"><span>Corte</span><b>$10.000</b></div><div class="pl"><span>Corte + barba</span><b>$15.000</b></div><div class="pl"><span>Perfilado de barba</span><b>$7.000</b></div><small>11:02 ✓✓</small></div>')
pages['post-1-4']=q(4,3,'¿Dónde quedan?','<div class="msg in">¿Dónde quedan?<small>13:40</small></div><div class="msg out" style="min-width:70%">Estamos en Av. Ejemplo 1234, local 5.<div class="map"><div class="pin"></div></div><div class="lnk" style="margin-top:10px">Ver en el mapa →</div><small>13:40 ✓✓</small></div>')
pages['post-1-5']=q(5,4,'¿Hasta qué hora atienden?','<div class="msg in">¿Hasta qué hora atienden?<small>19:51</small></div><div class="msg out" style="min-width:70%">Nuestro horario:<div class="pl"><span>Lunes a viernes</span><b>10:00–20:00</b></div><div class="pl"><span>Sábado</span><b>10:00–15:00</b></div><div class="pl"><span>Domingo</span><b>Cerrado</b></div><small>19:51 ✓✓</small></div>')
pages['post-1-6']=q(6,5,'¿Puedo cambiar mi hora?','<div class="msg in">¿Puedo cambiar mi hora?<small>08:05</small></div><div class="msg out">¡Claro! Tu hora es el jueves a las 17:00. ¿Qué quieres hacer?<div class="chips"><span class="chip f">Reagendar</span><span class="chip">Cancelar</span></div><small>08:05 ✓✓</small></div>')
pages['post-1-7']=page(cnt(7)+'<div class="lbl t">La prueba de esta semana</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:270px;font-size:104px">Las 5 se pueden <span class="kw hl">contestar solas.</span></div><div style="position:absolute;left:80px;right:80px;top:700px;font-size:50px;font-weight:700;line-height:1.25">Guárdalo y revisa cuántas te llegan esta semana.</div><div style="position:absolute;left:80px;top:960px;display:flex;align-items:center;gap:22px"><div class="ico" style="width:110px;height:110px;border-radius:28px;background:#5b4ce6;display:flex;align-items:center;justify-content:center">'+chk.replace('<svg ','<svg width="64" height="64" ')+'</div><div style="font-weight:800;font-size:80px;letter-spacing:-0.03em">Reservum<i style="font-style:normal;color:#5b4ce6">.</i></div></div>')
# post 2 imagen
dots=''.join('<div class="dot"></div>' for _ in range(10))
pages['post-2-1']=page('<div class="lbl t">Programa clientes fundadores</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:255px;font-size:112px">Buscamos <span class="kw hl">10 clientes fundadores</span></div><div class="ben"><div><b>½</b>Primer mes a mitad de precio</div><div><b>25%</b>de descuento de por vida</div><div><b>★</b>A cambio: tu testimonio</div></div><div class="dots">'+dots+'</div><div class="dm">Escríbenos FUNDADOR por DM</div>',
 '.ben{position:absolute;left:80px;right:80px;top:620px;display:flex;flex-direction:column;gap:22px}.ben div{display:flex;align-items:center;gap:26px;background:#fff;border-radius:28px;padding:22px 30px;font-size:44px;font-weight:700;box-shadow:0 10px 24px rgba(30,27,75,.08)}.ben b{min-width:120px;text-align:center;font-size:52px;font-weight:900;color:#5b21b6}.dots{position:absolute;left:80px;right:80px;top:1060px;display:flex;justify-content:space-between}.dot{width:68px;height:68px;border-radius:50%;background:#5b4ce6;box-shadow:0 6px 14px rgba(91,76,230,.3)}.dm{position:absolute;right:80px;bottom:56px;font-weight:800;font-size:36px;color:#5b21b6}')
# portadas reels (1080x1920)
C=css+'html,body{height:1920px}.brand{top:300px}.foot{bottom:300px}.lbl{position:absolute;left:80px;top:470px;font-size:36px}.ttl{position:absolute;left:80px;right:100px;top:540px}'
def cover(lbl,t): return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{C}</style></head><body><div id="root"><div class="bg"></div>{BR}<div class="lbl">{lbl}</div><div class="ttl" style="font-size:140px">{t}</div><div class="foot">reservum.cl</div></div></body></html>'
pages['reel-1-portada']=cover('Mito o realidad','¿A tus clientes les carga hablar con <span class="kw hl">un bot?</span>')
pages['reel-2-portada']=cover('Sin Reservum / con Reservum','Sábado 10:00 en una <span class="kw hl">veterinaria</span>')
for k,v in pages.items(): open(k+'.html','w').write(v)
