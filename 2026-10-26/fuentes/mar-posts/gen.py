import sys
sys.path.insert(0,'.')
from base import page, css, chk, BR
X='''
.note{position:absolute;left:80px;right:80px;font-size:40px;font-weight:600;line-height:1.3;color:#374151}
.num{position:absolute;left:80px;top:250px;font-weight:900;font-size:200px;letter-spacing:-0.06em;line-height:.85;color:#c4b5fd}
.q2{position:absolute;left:80px;right:80px;top:470px;font-size:84px}
.box{position:absolute;left:80px;right:80px;background:#efeae2;border-radius:44px;padding:34px 30px;display:flex;flex-direction:column;gap:18px;box-shadow:0 24px 60px rgba(30,27,75,.12)}
.coin{position:absolute;left:80px;display:flex;align-items:center;gap:36px}
.coin .c{width:230px;height:230px;border-radius:50%;background:radial-gradient(circle at 35% 30%,#fde68a,#f59e0b 70%);border:10px solid #d97706;display:flex;align-items:center;justify-content:center;font-weight:900;font-size:110px;color:#92400e;box-shadow:0 20px 40px rgba(217,119,6,.3)}
.coin .t{font-weight:900;font-size:120px;letter-spacing:-0.05em;color:#5b21b6}
.coin .s{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;color:#6d28d9;letter-spacing:.1em;margin-top:6px}
.vio{background:#5b4ce6;color:#fff;border-radius:40px 40px 10px 40px;padding:36px 40px;font-size:54px;font-weight:800;line-height:1.2;box-shadow:0 20px 44px rgba(91,76,230,.3)}
.clock{position:absolute;left:80px;width:280px;height:280px;border-radius:50%;background:#fff;border:12px solid #5b4ce6;box-shadow:0 20px 40px rgba(30,27,75,.12)}
.clock b{position:absolute;inset:0;display:flex;align-items:center;justify-content:center;font-weight:900;font-size:96px;letter-spacing:-0.04em;color:#1e1b4b}
.clock i{position:absolute;left:50%;top:22px;width:10px;height:30px;margin-left:-5px;background:#5b4ce6;border-radius:5px}
.rule{position:absolute;left:410px;right:80px;font-size:42px;font-weight:700;line-height:1.3;color:#374151}
.strike{position:relative;display:inline}
.box.sm .msg{font-size:34px;padding:16px 24px 10px}
.cross{position:absolute;left:-10px;right:-10px;top:52%;height:22px;background:#c4b5fd;transform:rotate(-2deg);border-radius:8px;mix-blend-mode:multiply}
'''
def cnt(i): return f'<div class="counter">{i}/6</div>'
S={}
S['post-1-1']=cnt(1)+'''<div class="lbl t">Reservas y abonos</div>
<div class="ttl q" style="font-size:104px;top:270px">Cómo pedir <span class="kw hl">abono</span> para reservar sin que la clienta se sienta desconfiada</div>
<div class="note" style="top:900px">5 formas, con los mensajes de ejemplo.</div>
<div class="swipe">desliza →</div>'''
S['post-1-2']=cnt(2)+'''<div class="num">1</div>
<div class="ttl q2">Dilo <span class="kw hl">antes</span> de agendar, no después.</div>
<div class="box" style="top:800px"><div class="msg out">Para reservar pedimos un abono de $5.000 que se descuenta del total.<small>11:20 ✓✓</small></div></div>'''
S['post-1-3']=cnt(3)+'''<div class="num">2</div>
<div class="ttl q2">Monto chico y fijo. Que <span class="kw hl">no parezca</span> un cobro.</div>
<div class="coin" style="top:850px"><div class="c">$</div><div><div class="t">$5.000</div><div class="s">SE DESCUENTA DEL TOTAL</div></div></div>'''
S['post-1-4']=cnt(4)+'''<div class="num">3</div>
<div class="ttl q2" style="font-size:80px">Explica <span class="kw hl">para qué es.</span></div>
<div style="position:absolute;left:80px;right:80px;top:720px;display:flex;flex-direction:column"><div class="vio">“Así guardamos tu hora solo para ti.”</div></div>
<div class="note" style="top:1010px">El abono cuida su hora, no tu desconfianza.</div>'''
S['post-1-5']=cnt(5)+'''<div class="num">4</div>
<div class="ttl q2" style="font-size:80px">Deja clara la <span class="kw hl">regla de cambio.</span></div>
<div class="clock" style="top:770px"><i></i><b>24 h</b></div>
<div class="rule" style="top:800px">“Puedes reagendar hasta <b style="color:#5b21b6;white-space:nowrap">24 h antes</b> y tu abono se mantiene.”</div>'''
S['post-1-6']=cnt(6)+'''<div class="num">5</div>
<div class="ttl q2" style="font-size:68px;top:440px"><span class="kw hl">Automatízalo.</span> Reservum envía el mensaje y confirma la hora cuando llega el abono.</div>
<div class="box sm" style="top:720px;gap:12px;padding:24px 26px">
<div class="msg out">Te dejé la hora del sábado 11:00. Para confirmarla, envía el abono de $5.000.<small>11:21 ✓✓</small></div>
<div class="msg in">Listo, ya transferí<small>11:24</small></div>
<div class="msg out">¡Abono recibido! Tu hora quedó confirmada ✓<small>11:24 ✓✓</small></div></div>'''
X2='''
.big{position:absolute;left:80px;right:80px;top:330px;font-weight:900;letter-spacing:-0.045em;line-height:1.02;color:#1e1b4b;font-size:112px}
.big .s{background-image:linear-gradient(#c4b5fd,#c4b5fd);background-repeat:no-repeat;background-position:0 58%;background-size:100% 26%}
.sub{position:absolute;left:80px;right:80px;top:860px;font-size:58px;font-weight:800;line-height:1.15;color:#1e1b4b}
.sub .kw{color:#5b21b6}
.small{position:absolute;left:80px;right:80px;top:1060px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:34px;color:#6d28d9;letter-spacing:.04em}
'''
S2='''<div class="lbl t">La frase más cara del WhatsApp</div>
<div class="big"><span class="s">“Te respondo apenas me desocupe”</span></div>
<div class="sub">La frase que más clientes le regala a <span class="kw">la competencia.</span></div>
<div class="small">mientras tanto, le preguntó a otro local.</div>'''
for k,v in S.items(): open(k+'.html','w').write(page(v,X))
open('post-2-1.html','w').write(page(S2,X2))
CV=css+'''.abs{position:absolute;left:80px;right:140px}
.cta{display:inline-flex;background:#5b4ce6;color:#fff;font-weight:800;font-size:46px;padding:22px 40px;border-radius:999px}'''
def cover(body):
    return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{CV}</style></head><body><div id="root"><div class="bg"></div>{BR}{body}<div class="foot">reservum.cl</div></div></body></html>'
c1='''<div class="lbl abs" style="top:420px">Barbería · haz la cuenta</div>
<div class="abs" style="top:500px;font-weight:900;letter-spacing:-0.055em;font-size:210px;line-height:.9;color:#5b21b6">$96.000</div>
<div class="ttl abs" style="top:740px;font-size:118px">al mes en <span class="kw hl">sillas vacías</span></div>
<div class="abs" style="top:1200px"><span class="cta">2 inasistencias a la semana</span></div>'''
c2='''<div class="lbl abs" style="top:420px">Veterinaria · control anual</div>
<div class="ttl abs" style="top:490px;font-size:128px">A Luna le toca su <span class="kw hl">vacuna</span></div>
<div class="abs" style="top:880px;width:300px;height:300px;border-radius:60px;background:#fff;box-shadow:0 20px 50px rgba(30,27,75,.12);display:flex;align-items:center;justify-content:center"><svg viewBox="0 0 200 200" width="250" height="250">
<ellipse cx="52" cy="78" rx="26" ry="48" fill="#92400e" transform="rotate(18 52 78)"/><ellipse cx="148" cy="78" rx="26" ry="48" fill="#92400e" transform="rotate(-18 148 78)"/>
<ellipse cx="100" cy="104" rx="62" ry="66" fill="#f59e0b"/><ellipse cx="100" cy="138" rx="38" ry="30" fill="#fde68a"/>
<circle cx="76" cy="96" r="9" fill="#1e1b4b"/><circle cx="124" cy="96" r="9" fill="#1e1b4b"/><circle cx="79" cy="93" r="3" fill="#fff"/><circle cx="127" cy="93" r="3" fill="#fff"/>
<ellipse cx="100" cy="124" rx="14" ry="10" fill="#1e1b4b"/><path d="M88 142 Q100 152 112 142" stroke="#1e1b4b" stroke-width="5" fill="none" stroke-linecap="round"/><ellipse cx="100" cy="158" rx="9" ry="10" fill="#f472b6"/></svg></div>
<div class="abs" style="top:1240px"><span class="cta">El mensaje sale solo</span></div>'''
open('reel-1-portada.html','w').write(cover(c1)); open('reel-2-portada.html','w').write(cover(c2))
