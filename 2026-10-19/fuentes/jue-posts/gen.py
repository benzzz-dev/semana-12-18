exec(open('base.py').read())
X='''
.card2{display:flex;align-items:center;gap:24px;background:#fff;border-radius:30px;padding:24px 30px;box-shadow:0 14px 34px rgba(30,27,75,.12);border:4px solid #5b4ce6}
.card2 .ck{width:80px;height:80px;border-radius:22px;background:#5b4ce6;display:flex;align-items:center;justify-content:center;flex:none}
.card2 .ck svg{width:48px;height:48px}
.card2 b{display:block;font-size:44px;font-weight:900;letter-spacing:-0.03em}
.card2 span{font-family:"DejaVu Sans Mono",monospace;font-size:28px;color:#6d28d9;font-weight:700}
.card2.off{border-color:#cbd5e1}
.card2.off b{color:#94a3b8;text-decoration:line-through;text-decoration-thickness:6px;text-decoration-color:#e11d48}
.card2.off span{color:#be123c}
.card2.off .ck{background:#ffe4e6;color:#be123c;font-size:48px;font-weight:900}
.step{position:absolute;left:80px;right:80px;top:255px;font-size:92px}
.box{position:absolute;left:80px;right:80px}
.num{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#fff;background:#5b4ce6;border-radius:14px;padding:6px 16px;font-size:30px;letter-spacing:.1em}
.cal{display:grid;grid-template-columns:130px 1fr 1fr;gap:14px;align-items:center}
.cal .hd{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:32px;letter-spacing:.08em;text-align:center}
.cal .hr{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;opacity:.7}
.slot{height:80px;border-radius:20px;background:#fff;border:3px solid #ddd6fe;display:flex;align-items:center;padding-left:22px;font-weight:700;font-size:30px;color:#64748b}
.slot.x{background:#5b4ce6;border-color:#5b4ce6;color:#fff;font-family:"DejaVu Sans Mono",monospace;letter-spacing:.06em}
.cat{display:flex;align-items:center;gap:28px;background:#fff;border-radius:30px;padding:26px 30px;box-shadow:0 14px 34px rgba(30,27,75,.1)}
.cat .ic{width:110px;height:110px;border-radius:26px;background:#fff7ed;display:flex;align-items:center;justify-content:center;flex:none}
.cat b{display:block;font-size:48px;font-weight:900;letter-spacing:-0.03em}
.cat span{font-family:"DejaVu Sans Mono",monospace;font-size:28px;color:#6d28d9;font-weight:700}
.cat .pr{margin-left:auto;font-weight:900;font-size:50px;color:#5b21b6;letter-spacing:-0.02em}
.note{position:absolute;left:80px;right:80px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:28px;color:#6d28d9;letter-spacing:.06em;line-height:1.4}
.calc{font-weight:900;letter-spacing:-0.045em;line-height:1;color:#1e1b4b}
'''
CK=f'<div class="ck">{chk}</div>'
PK='<svg width="{s}" height="{s}" viewBox="0 0 100 100" fill="none" stroke="#f97316" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"><path d="M50 26c-6-10 2-16 8-16"/><ellipse cx="50" cy="60" rx="38" ry="30"/><path d="M50 30c-12 0-16 14-16 30s4 30 16 30M50 30c12 0 16 14 16 30s-4 30-16 30"/></svg>'
WEB='<svg width="72" height="72" viewBox="0 0 100 100" fill="none" stroke="#1e1b4b" stroke-width="4" stroke-linecap="round"><path d="M50 8v84M8 50h84M20 20l60 60M80 20L20 80"/><path d="M50 26l17 7 7 17-7 17-17 7-17-7-7-17 7-17z"/><path d="M50 40l7 3 3 7-3 7-7 3-7-3-3-7 3-7z"/></svg>'
DROP='<svg width="64" height="64" viewBox="0 0 100 100"><path d="M50 10C40 34 24 50 24 66a26 26 0 0052 0c0-16-16-32-26-56z" fill="#e11d48"/></svg>'
pages={}
def cnt(i,N): return f'<div class="counter">{i}/{N}</div>'
N=7
nail='<svg width="300" height="380" viewBox="0 0 150 190"><rect x="20" y="40" width="110" height="150" rx="40" fill="#fde68a" opacity=".35"/><path d="M35 70c0-28 18-50 40-50s40 22 40 50v80H35z" fill="#f97316"/><path d="M75 30v110M50 60l50 60M100 60L50 120M40 90h70" stroke="#1e1b4b" stroke-width="3" opacity=".55"/><path d="M75 55c12 0 22 10 22 22s-10 22-22 22-22-10-22-22 10-22 22-22z" fill="none" stroke="#1e1b4b" stroke-width="3" opacity=".55"/></svg>'
pages['post-1-1']=page(cnt(1,N)+'<div class="lbl t">Halloween · sábado 31</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:255px;font-size:100px">Halloween cae sábado 31. Tu agenda se llena <span class="kw hl">esta semana.</span></div>'
 +f'<div class="box" style="top:800px;display:flex;align-items:flex-end;gap:40px"><div>{nail}</div><div style="margin-bottom:30px">{PK.format(s=200)}</div></div><div class="swipe">desliza →</div>',X)
cal=''.join(f'<div class="hr">{h}</div><div class="slot{" x" if a else ""}">{"+ EXTRA" if a else "Agendada"}</div><div class="slot{" x" if b else ""}">{"+ EXTRA" if b else "Agendada"}</div>' for h,a,b in [('09:00',1,1),('12:00',0,0),('16:00',0,0),('20:00',1,1),('21:00',0,1)])
pages['post-1-2']=page(cnt(2,N)+'<div class="lbl t">Paso 1</div><div class="ttl step" style="font-size:84px">Abre más horas el <span class="kw hl">jueves 29 y viernes 30</span></div>'
 +f'<div class="box cal" style="top:640px"><div></div><div class="hd">JUE 29</div><div class="hd">VIE 30</div>{cal}</div>',X)
cats=[(WEB,'Telaraña','UÑAS · 60 MIN','$12.000'),(PK.format(s=76),'Calabaza','UÑAS · 75 MIN','$14.000'),(DROP,'Sangre falsa','MAQUILLAJE · 45 MIN','$13.000')]
pages['post-1-3']=page(cnt(3,N)+'<div class="lbl t">Paso 2</div><div class="ttl step">Arma un <span class="kw hl">menú de diseños</span> con precio</div>'
 +'<div class="box" style="top:620px;display:flex;flex-direction:column;gap:24px">'+''.join(f'<div class="cat"><div class="ic">{i}</div><div><b>{n}</b><span>{d}</span></div><div class="pr">{p}</div></div>' for i,n,d,p in cats)+'</div><div class="note" style="bottom:130px">VALORES DE EJEMPLO</div>',X)
pages['post-1-4']=page(cnt(4,N)+'<div class="lbl t">Paso 3</div><div class="ttl step">Pide <span class="kw hl">abono</span> para las horas largas</div>'
 +'<div class="chat" style="top:600px"><div class="msg in">Quiero el maquillaje de Catrina el sábado<small>18:20</small></div><div class="msg out">¡Listo! Es una sesión de 2 horas. Para reservarla se pide un abono de $10.000.<div class="chips"><span class="chip f">Pagar abono</span></div><small>18:20 ✓✓</small></div></div><div class="auto">LINK DE PAGO AUTOMÁTICO ✓</div>',X)
pages['post-1-5']=page(cnt(5,N)+'<div class="lbl t">Paso 4</div><div class="ttl step">Recordatorio 24 h antes, <span class="kw hl">sí o sí</span></div>'
 +'<div class="chat" style="top:600px"><div class="msg out">Hola Vale, te recordamos tu hora mañana sábado 31 a las 12:00 (uñas de telaraña). ¿Confirmas?<div class="chips"><span class="chip f">Sí, confirmo</span><span class="chip">Reagendar</span></div><small>Vie 12:00 ✓✓</small></div><div class="msg in">Sí, confirmo<small>12:03</small></div></div><div class="auto">MENSAJE AUTOMÁTICO ✓</div>',X)
pages['post-1-6']=page(cnt(6,N)+'<div class="lbl t">Paso 5</div><div class="ttl step">Respuesta lista para <span class="kw hl">“¿atienden el 31?”</span></div>'
 +'<div class="chat" style="top:620px"><div class="msg in">¿Atienden el 31? Es feriado<small>21:47</small></div><div class="msg out">¡Sí! El sábado 31 atendemos de 10:00 a 18:00. ¿Te busco una hora?<small>21:47 ✓✓</small></div></div><div class="note" style="top:1060px">ES FERIADO: DECIDE TU HORARIO<br>Y DÉJALO PROGRAMADO.</div>',X)
logo='<div style="position:absolute;left:80px;top:{t}px;display:flex;align-items:center;gap:22px"><div style="width:110px;height:110px;border-radius:28px;background:#5b4ce6;display:flex;align-items:center;justify-content:center">'+chk.replace('<svg ','<svg width="64" height="64" ')+'</div><div style="font-weight:800;font-size:80px;letter-spacing:-0.03em">Reservum<i style="font-style:normal;color:#5b4ce6">.</i></div></div>'
pages['post-1-7']=page(cnt(7,N)+'<div class="lbl t">Antes del 31</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:270px;font-size:120px">Guárdalo y <span class="kw hl">compártelo</span> con tu socia.</div><div style="position:absolute;left:80px;right:80px;top:700px;font-size:50px;font-weight:700;line-height:1.25">Tu WhatsApp se contesta solo. Tu agenda se llena sola.</div>'+logo.format(t=960)+f'<div style="position:absolute;right:80px;top:950px">{PK.format(s=130)}</div>',X)
# carrusel 2
N=5
chair='<svg width="420" height="360" viewBox="0 0 210 180" fill="none" stroke="#1e1b4b" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"><path d="M40 30c0-10 8-16 16-12l10 6v66"/><path d="M66 90h80c10 0 18 8 18 18v6H60z"/><path d="M62 114l-20 20M150 114l10 20"/><path d="M100 120v34M70 160h60"/><path d="M150 50h40M170 50v30"/></svg>'
pages['post-2-1']=page(cnt(1,N)+'<div class="lbl t">Clínicas dentales</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:255px;font-size:118px">¿Cuánto te cuesta un <span class="kw hl">sillón vacío?</span></div>'
 +f'<div class="box" style="top:720px;display:flex;align-items:center;gap:20px"><div>{chair}</div><div style="width:200px;height:200px;border-radius:50%;background:#5b4ce6;color:#fff;font-weight:900;font-size:130px;display:flex;align-items:center;justify-content:center;box-shadow:0 20px 40px rgba(91,76,230,.35)">$</div></div><div class="swipe">desliza →</div>',X)
pages['post-2-2']=page(cnt(2,N)+'<div class="lbl t">Ejemplo</div><div class="ttl step"><span class="kw hl">2 inasistencias</span> a la semana</div>'
 +'<div class="box" style="top:620px;display:flex;flex-direction:column;gap:26px"><div class="card2 off"><div class="ck">✗</div><div><b>Martes 10:00 · Limpieza</b><span>NO LLEGÓ</span></div></div><div class="card2 off"><div class="ck">✗</div><div><b>Jueves 16:30 · Control</b><span>NO LLEGÓ</span></div></div></div><div class="note" style="top:1010px">SIN AVISO. SIN TIEMPO PARA<br>LLENAR ESA HORA.</div>',X)
pages['post-2-3']=page(cnt(3,N)+'<div class="lbl t">El cálculo</div>'
 +'<div class="calc" style="position:absolute;left:80px;right:80px;top:300px;font-size:120px">2 horas<br>× $35.000</div><div style="position:absolute;left:80px;right:80px;top:600px;height:8px;background:#1e1b4b;border-radius:4px"></div><div class="calc" style="position:absolute;left:80px;right:80px;top:660px;font-size:150px"><span class="kw">$70.000</span></div><div style="position:absolute;left:80px;top:840px;font-size:60px;font-weight:800">a la semana</div><div class="note" style="top:1010px">VALORES DE EJEMPLO</div>',X)
pages['post-2-4']=page(cnt(4,N)+'<div class="lbl t">Al mes</div>'
 +'<div class="calc" style="position:absolute;left:80px;top:290px;font-size:120px">=</div><div class="calc" style="position:absolute;left:80px;right:60px;top:420px;font-size:190px"><span class="kw hl">$280.000</span></div><div style="position:absolute;left:80px;right:80px;top:660px;font-size:76px;font-weight:900;letter-spacing:-0.04em;line-height:1.05">al mes que no vuelven.</div><div class="note" style="top:900px">$70.000 × 4 SEMANAS<br>VALORES DE EJEMPLO</div>',X)
pages['post-2-5']=page(cnt(5,N)+'<div class="lbl t">Tu turno</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:255px;font-size:100px">Haz tu propio cálculo y <span class="kw hl">guárdalo.</span></div>'
 +'<div class="box" style="top:560px;background:#fff;border-radius:30px;padding:30px 34px;box-shadow:0 14px 34px rgba(30,27,75,.1);font-family:\'DejaVu Sans Mono\',monospace;font-weight:700;font-size:32px;line-height:1.7;color:#1e1b4b">inasistencias por semana<br>× valor de la hora<br>× 4 semanas<br><span style="color:#5b21b6">= ________ al mes</span></div>'
 +'<div style="position:absolute;left:80px;right:80px;top:900px;font-size:46px;font-weight:700;line-height:1.25">Recordatorios con confirmación <span class="kw">lo bajan.</span></div>'+logo.format(t=1050),X)
C=css+'html,body{height:1920px}.brand{top:300px}.foot{bottom:300px}.lbl{position:absolute;left:80px;top:470px;font-size:36px}.ttl{position:absolute;left:80px;right:100px;top:540px}'
def cover(lbl,t,fs=140,extra=''): return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{C}</style></head><body><div id="root"><div class="bg"></div>{BR}<div class="lbl">{lbl}</div><div class="ttl" style="font-size:{fs}px">{t}</div>{extra}<div class="foot">reservum.cl</div></div></body></html>'
pages['reel-1-portada']=cover('Halloween · sábado 31','Faltan <span class="kw hl">9 días</span> para Halloween',150,f'<div style="position:absolute;left:80px;top:1150px">{PK.format(s=180)}</div>')
pages['reel-2-portada']=cover('Mito o realidad','¿Tienes que estar <span class="kw hl">conectado</span> todo el día?',130)
for k,v in pages.items(): open(k+'.html','w').write(v)
