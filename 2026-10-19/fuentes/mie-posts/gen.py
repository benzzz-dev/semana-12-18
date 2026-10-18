exec(open('base.py').read())
X='''
.card2{display:flex;align-items:center;gap:24px;background:#fff;border-radius:30px;padding:24px 30px;box-shadow:0 14px 34px rgba(30,27,75,.12);border:4px solid #5b4ce6}
.card2 .ck{width:80px;height:80px;border-radius:22px;background:#5b4ce6;display:flex;align-items:center;justify-content:center;flex:none}
.card2 .ck svg{width:48px;height:48px}
.card2 b{display:block;font-size:44px;font-weight:900;letter-spacing:-0.03em}
.card2 span{font-family:"DejaVu Sans Mono",monospace;font-size:28px;color:#6d28d9;font-weight:700}
.card2.off{border-color:#cbd5e1;opacity:.85}
.card2.off b{color:#94a3b8;text-decoration:line-through;text-decoration-thickness:6px;text-decoration-color:#e11d48}
.card2.off span{color:#94a3b8}
.card2.off .ck{background:#cbd5e1}
.card2.free{border:4px dashed #6d28d9;background:rgba(255,255,255,.6)}
.card2.free .ck{background:#ede9fe;color:#5b21b6;font-size:46px;font-weight:900}
.nt{display:flex;gap:22px;align-items:flex-start;background:#fff;border-radius:32px;padding:24px 28px;box-shadow:0 14px 34px rgba(30,27,75,.12)}
.nt .i{width:76px;height:76px;border-radius:20px;background:#5b4ce6;display:flex;align-items:center;justify-content:center;flex:none}
.nt .i svg{width:44px;height:44px}
.nt .h{display:flex;justify-content:space-between;font-family:"DejaVu Sans Mono",monospace;font-size:26px;color:#444;font-weight:700}
.nt .b{font-size:36px;font-weight:600;margin-top:6px;line-height:1.2}
.step{position:absolute;left:80px;right:80px;top:255px;font-size:96px}
.box{position:absolute;left:80px;right:80px}
'''
chk_s=chk
CK=f'<div class="ck">{chk_s}</div>'
pages={}
N=6
cnt=lambda i:f'<div class="counter">{i}/{N}</div>'
pages['post-1-1']=page(cnt(1)+'<div class="lbl t">Lista de espera automática</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:255px;font-size:100px">Hora que se cancela, hora que se <span class="kw hl">vuelve a llenar</span></div>'
 +f'<div class="box" style="top:740px;display:flex;flex-direction:column;gap:26px"><div class="card2 off">{CK}<div><b>Mañana 16:00 · Javiera</b><span>CANCELADA</span></div></div><div style="font-size:64px;color:#5b4ce6;font-weight:900;padding-left:30px;line-height:1">↓</div><div class="card2">{CK}<div><b>Mañana 16:00 · Camila</b><span>REASIGNADA SOLA</span></div></div></div><div class="swipe">desliza →</div>',X)
pages['post-1-2']=page(cnt(2)+'<div class="lbl t">Paso 1</div><div class="ttl step">El recordatorio <span class="kw hl">pide confirmar</span></div>'
 +'<div class="chat" style="top:640px"><div class="msg out">Hola Javiera, ¿confirmas tu hora de mañana a las 16:00?<div class="chips"><span class="chip">Sí, confirmo</span><span class="chip">No puedo</span></div><small>Ayer 10:00 ✓✓</small></div></div><div class="auto">MENSAJE AUTOMÁTICO ✓</div>',X)
pages['post-1-3']=page(cnt(3)+'<div class="lbl t">Paso 2</div><div class="ttl step">La clienta responde <span class="kw hl">“No”</span></div>'
 +'<div class="chat" style="top:580px"><div class="msg out">Hola Javiera, ¿confirmas tu hora de mañana a las 16:00?<div class="chips"><span class="chip">Sí, confirmo</span><span class="chip f">No puedo</span></div><small>Ayer 10:00 ✓✓</small></div><div class="msg in">No puedo<small>10:04</small></div></div>'
 +f'<div class="box" style="top:1030px"><div class="card2 free"><div class="ck">+</div><div><b>Mañana 16:00</b><span>HORA LIBRE</span></div></div></div>',X)
nts=''.join(f'<div class="nt"><div class="i">{chk_s}</div><div style="flex:1"><div class="h"><span>PARA {n.upper()}</span><span>10:05</span></div><div class="b">Se liberó una hora mañana a las 16:00. ¿La quieres? Responde SÍ.</div></div></div>' for n in ['Camila','Josefa','Martina'])
pages['post-1-4']=page(cnt(4)+'<div class="lbl t">Paso 3</div><div class="ttl step">Se avisa a la <span class="kw hl">lista de espera</span></div>'
 +f'<div class="box" style="top:560px;display:flex;flex-direction:column;gap:22px">{nts}</div><div class="auto">3 AVISOS EN PARALELO ✓</div>',X)
pages['post-1-5']=page(cnt(5)+'<div class="lbl t">Paso 4</div><div class="ttl step">El primero que responde, <span class="kw hl">se la queda</span></div>'
 +'<div class="chat" style="top:640px"><div class="msg out">Se liberó una hora mañana a las 16:00. ¿La quieres? Responde SÍ.<small>10:05 ✓✓</small></div><div class="msg in">¡SÍ! 🙌<small>10:06</small></div></div>'
 +f'<div class="box" style="top:1010px"><div class="card2">{CK}<div><b>Mañana 16:00 · Camila</b><span>HORA REASIGNADA</span></div></div></div>',X+'body{font-family:"Inter","Noto Color Emoji"}.msg{font-family:"Inter","Noto Color Emoji",sans-serif}')
pages['post-1-6']=page(cnt(6)+'<div class="lbl t">Resultado</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:270px;font-size:112px">Cero mensajes escritos <span class="kw hl">por ti.</span></div><div style="position:absolute;left:80px;right:80px;top:640px;font-size:52px;font-weight:700;line-height:1.25">Guárdalo y activa tu lista de espera automática.</div><div style="position:absolute;left:80px;top:930px;display:flex;align-items:center;gap:22px"><div style="width:110px;height:110px;border-radius:28px;background:#5b4ce6;display:flex;align-items:center;justify-content:center">'+chk.replace('<svg ','<svg width="64" height="64" ')+'</div><div style="font-weight:800;font-size:80px;letter-spacing:-0.03em">Reservum<i style="font-style:normal;color:#5b4ce6">.</i></div></div>',X)
# imagen 2: dos relojes
import math
def dial(arc_from,arc_to,full=False):
    r=140;cx=cy=170;C=2*math.pi*r
    marks=''.join(f'<text x="{cx+92*math.sin(h/24*2*math.pi):.1f}" y="{cy-92*math.cos(h/24*2*math.pi)+10:.1f}" text-anchor="middle" font-family="DejaVu Sans Mono" font-weight="700" font-size="26" fill="#6d28d9">{h:02d}</text>' for h in (0,6,12,18))
    if full: seg=f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="none" stroke="#5b4ce6" stroke-width="30"/>'
    else:
        L=(arc_to-arc_from)/24*C
        seg=f'<circle cx="{cx}" cy="{cy}" r="{r}" fill="none" stroke="#5b4ce6" stroke-width="30" stroke-dasharray="{L:.1f} {C:.1f}" transform="rotate({arc_from/24*360-90} {cx} {cy})"/>'
    return f'<svg width="340" height="340" viewBox="0 0 340 340"><circle cx="{cx}" cy="{cy}" r="{r}" fill="none" stroke="#ddd6fe" stroke-width="30"/>{seg}{marks}<circle cx="{cx}" cy="{cy}" r="8" fill="#1e1b4b"/></svg>'
bub=lambda t,h:f'<div class="msg in" style="font-family:Inter,sans-serif">{t}<small>{h}</small></div>'
pages['post-2-1']=page('<div class="lbl t">Fuera de horario</div><div class="ttl" style="position:absolute;left:80px;right:80px;top:255px;font-size:96px">Tu local: 10 a 19. Tu WhatsApp: <span class="kw hl">24/7.</span></div>'
 +f'<div class="box" style="top:490px;display:flex;justify-content:space-between"><div class="dl">{dial(10,19)}<div class="cap">TU LOCAL<br><b>10:00 – 19:00</b></div></div><div class="dl">{dial(0,24,True)}<div class="cap">TU WHATSAPP<br><b>24/7</b></div></div></div>'
 +'<div class="box bubs" style="top:965px">'+bub('¿Tienen hora hoy?','07:02')+bub('¿Cuánto sale el esmaltado?','21:40')+bub('¿Atienden mañana?','00:15')+'</div>',
 X+'.dl{width:420px;display:flex;flex-direction:column;align-items:center;background:rgba(255,255,255,.55);border-radius:36px;padding:20px 0 18px}.cap{text-align:center;font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:28px;letter-spacing:.1em;margin-top:10px}.cap b{display:block;font-family:Inter;color:#1e1b4b;font-size:44px;letter-spacing:-0.02em;margin-top:4px}.bubs{display:flex;flex-wrap:wrap;gap:16px}.bubs .msg{font-size:34px;max-width:none}')
C=css+'html,body{height:1920px}.brand{top:300px}.foot{bottom:300px}.lbl{position:absolute;left:80px;top:470px;font-size:36px}.ttl{position:absolute;left:80px;right:100px;top:540px}'
def cover(lbl,t,fs=140): return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{C}</style></head><body><div id="root"><div class="bg"></div>{BR}<div class="lbl">{lbl}</div><div class="ttl" style="font-size:{fs}px">{t}</div><div class="foot">reservum.cl</div></div></body></html>'
pages['reel-1-portada']=cover('Tatuadores','3 horas tatuando = <span class="kw hl">17 mensajes</span> sin leer',130)
pages['reel-2-portada']=cover('Paso a paso','Reagendar en <span class="kw hl">3 mensajes</span>')
for k,v in pages.items(): open(k+'.html','w').write(v)
