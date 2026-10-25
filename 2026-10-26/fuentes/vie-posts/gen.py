import sys
sys.path.insert(0,'.')
from base import page, css, chk, BR
STAR='<svg viewBox="0 0 24 24"><path d="M12 2.5l2.9 6.1 6.6.8-4.9 4.6 1.3 6.6L12 17.3 6.1 20.6l1.3-6.6L2.5 9.4l6.6-.8z"/></svg>'
X='''
.note{position:absolute;left:80px;right:80px;font-size:42px;font-weight:600;line-height:1.3;color:#374151}
.num{position:absolute;left:80px;top:230px;font-weight:900;font-size:200px;letter-spacing:-0.06em;line-height:.85;color:#c4b5fd}
.q2{position:absolute;left:80px;right:80px;top:430px;font-size:84px}
.stars{position:absolute;left:80px;right:80px;display:flex;gap:22px}
.stars svg{width:150px;height:150px;fill:none;stroke:#a78bfa;stroke-width:1.6;stroke-linejoin:round}
.stars.on svg{fill:#5b4ce6;stroke:#5b4ce6}
.clock{position:absolute;left:80px;width:300px;height:300px;border-radius:50%;background:#fff;border:12px solid #5b4ce6;box-shadow:0 20px 40px rgba(30,27,75,.12)}
.clock b{position:absolute;inset:0;display:flex;flex-direction:column;align-items:center;justify-content:center;font-weight:900;font-size:110px;letter-spacing:-0.04em;color:#5b21b6;line-height:.9}
.clock b small{font-size:34px;color:#1e1b4b;letter-spacing:0;font-weight:800;margin-top:8px}
.clock::before{content:"";position:absolute;inset:-12px;border-radius:50%;background:conic-gradient(#c4b5fd 0 25%,transparent 25%);-webkit-mask:radial-gradient(circle,transparent 62%,#000 63%);mask:radial-gradient(circle,transparent 62%,#000 63%)}
.rule{position:absolute;left:430px;right:80px;font-size:42px;font-weight:700;line-height:1.3;color:#374151}
.tl{position:absolute;left:80px;right:80px;display:flex;align-items:center;gap:0;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;color:#6d28d9}
.tl .seg{flex:1;height:10px;background:#c4b5fd;border-radius:5px;margin:0 14px}
.tl .pt{background:#fff;border-radius:18px;padding:14px 20px;box-shadow:0 10px 24px rgba(30,27,75,.1)}
.tl .pt.f{background:#5b4ce6;color:#fff}
.btncard{position:absolute;left:80px;right:80px;background:#fff;border-radius:40px;padding:40px;box-shadow:0 24px 60px rgba(30,27,75,.12);display:flex;flex-direction:column;gap:26px;align-items:flex-start}
.btncard .u{font-family:"DejaVu Sans Mono",monospace;font-size:30px;color:#2563eb;font-weight:700}
.btn{display:inline-flex;align-items:center;gap:20px;background:#5b4ce6;color:#fff;font-weight:900;font-size:58px;letter-spacing:-0.02em;padding:26px 46px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
.btn svg{width:56px;height:56px;fill:#fff}
.mini{display:flex;gap:8px}.mini svg{width:52px;height:52px;fill:#5b4ce6}
.box{position:absolute;left:80px;right:80px;background:#efeae2;border-radius:44px;padding:34px 30px;display:flex;flex-direction:column;gap:18px;box-shadow:0 24px 60px rgba(30,27,75,.12)}
.vs{position:absolute;left:80px;right:80px;display:flex;flex-direction:column;gap:22px}
.row{display:flex;align-items:center;gap:24px}
.row .tg{flex:none;width:96px;height:96px;border-radius:28px;display:flex;align-items:center;justify-content:center;font-weight:900;font-size:56px;color:#fff}
.row .tg.no{background:#f87171}.row .tg.si{background:#5b4ce6}
.row .msg{max-width:none;flex:1}
.one{position:absolute;right:80px;top:200px;width:200px;height:200px;border-radius:50%;background:#5b4ce6;color:#fff;font-weight:900;font-size:150px;display:flex;align-items:center;justify-content:center;letter-spacing:-0.05em;box-shadow:0 20px 40px rgba(91,76,230,.35)}
.endl{position:absolute;left:80px;right:80px;top:280px;font-size:88px}
.list{position:absolute;left:80px;right:80px;top:820px;display:flex;flex-direction:column;gap:20px}
.list div{display:flex;align-items:center;gap:22px;font-size:44px;font-weight:800}
.list i{flex:none;width:62px;height:62px;border-radius:18px;background:#5b4ce6;display:flex;align-items:center;justify-content:center}
.list i svg{width:38px;height:38px}
'''
def cnt(i): return f'<div class="counter">{i}/6</div>'
S={}
S['post-1-1']=cnt(1)+f'''<div class="lbl t">Reseñas en Google</div>
<div class="ttl q" style="font-size:94px;top:260px">Tus clientes felices no dejan reseña. <span style="color:#374151;font-size:66px;letter-spacing:-0.03em;display:block;margin-top:24px">No es que no quieran:</span><span class="kw hl">nadie se las pidió.</span></div>
<div class="stars" style="top:960px">{STAR*5}</div>
<div class="swipe">desliza →</div>'''
S['post-1-2']=cnt(2)+'''<div class="num">1</div>
<div class="ttl q2">Pídela el <span class="kw hl">mismo día</span>, 2 a 3 horas después de la cita.</div>
<div class="clock" style="top:800px"><b>+2<small>horas</small></b></div>
<div class="rule" style="top:850px">Todavía se está mirando el corte, las uñas o la sonrisa nueva.</div>'''
S['post-1-3']=cnt(3)+f'''<div class="num">2</div>
<div class="ttl q2">Un solo link, <span class="kw hl">directo a la reseña.</span></div>
<div class="btncard" style="top:760px"><div class="mini">{STAR*5}</div><span class="btn">{STAR}Dejar reseña</span><div class="u">un toque → se abre la reseña de tu local</div></div>
<div class="note" style="top:1150px">Sin buscar tu local en Google ni pasos extra.</div>'''
S['post-1-4']=cnt(4)+'''<div class="num">3</div>
<div class="ttl q2">Mensaje corto y <span class="kw hl">con nombre.</span></div>
<div class="box" style="top:720px"><div class="msg out" style="font-size:42px;max-width:92%">Gracias por venir, Javi. ¿Nos dejas tu opinión? Te toma 30 segundos.<br><span class="lnk">g.page/r/tu-local/review</span><small>16:12 ✓✓</small></div><div class="msg in" style="font-size:42px">¡Listo! 5 estrellas<small>16:20</small></div></div>'''
S['post-1-5']=cnt(5)+'''<div class="num">4</div><div class="one">1</div>
<div class="ttl q2">Una sola vez. <span class="kw hl">Nada de insistir.</span></div>
<div class="vs" style="top:740px">
<div class="row"><div class="tg si">✓</div><div class="msg out" style="font-size:40px">Un mensaje, el mismo día.<small>16:12 ✓✓</small></div></div>
<div class="row"><div class="tg no">✕</div><div class="msg out" style="font-size:40px">“¿Viste mi mensaje?” al día siguiente.<small>10:05 ✓✓</small></div></div>
<div class="row"><div class="tg no">✕</div><div class="msg out" style="font-size:40px">Un tercer recordatorio.<small>18:40 ✓✓</small></div></div>
</div>'''
S['post-1-6']=cnt(6)+f'''<div class="lbl t">La solución</div>
<div class="ttl endl"><span class="kw hl">Reservum</span> lo manda solo después de cada cita.</div>
<div class="stars on" style="top:600px">{STAR*5}</div>
<div class="list">
<div><i>{chk}</i>A la hora justa, sin que te acuerdes.</div>
<div><i>{chk}</i>Con el nombre de cada cliente.</div>
<div><i>{chk}</i>Con el link directo a tu reseña.</div>
<div><i>{chk}</i>Una sola vez.</div>
</div>'''
X2='''
.big{position:absolute;left:80px;right:310px;top:255px;font-weight:900;letter-spacing:-0.045em;line-height:1.0;color:#1e1b4b;font-size:100px}
.big .kw{color:#5b21b6}
.calm{position:absolute;right:80px;top:200px;width:190px;background:#fff;border-radius:30px;box-shadow:0 20px 44px rgba(30,27,75,.14);overflow:hidden;text-align:center}
.calm .m{background:#5b4ce6;color:#fff;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:26px;letter-spacing:.14em;padding:10px 0}
.calm .d{font-weight:900;font-size:110px;letter-spacing:-0.05em;line-height:1.05;color:#1e1b4b}
.calm .w{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:22px;color:#6d28d9;padding-bottom:14px;letter-spacing:.08em}
.opts{position:absolute;left:80px;right:80px;top:620px;display:grid;grid-template-columns:1fr 1fr;gap:26px}
.opt{background:#fff;border-radius:36px;padding:30px 32px;box-shadow:0 20px 50px rgba(30,27,75,.12);display:flex;flex-direction:column;gap:10px;min-height:250px}
.opt b{font-weight:900;font-size:110px;color:#5b4ce6;letter-spacing:-0.05em;line-height:.9}
.opt span{font-weight:800;font-size:46px;letter-spacing:-0.02em;line-height:1.1}
.ask{position:absolute;left:80px;right:80px;top:1205px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:34px;color:#6d28d9;letter-spacing:.04em}
.bat{position:absolute;opacity:.10}
'''
S2='''<div class="lbl t" style="top:200px">Encuesta · feriado</div>
<div class="calm"><div class="m">OCT</div><div class="d">31</div><div class="w">SÁB · FERIADO</div></div>
<div class="big">Sábado 31, feriado. <span class="kw hl">¿Abres?</span></div>
<div class="opts">
<div class="opt"><b>A</b><span>Todo el día</span></div>
<div class="opt"><b>B</b><span>Medio día</span></div>
<div class="opt"><b>C</b><span>Cerrado</span></div>
<div class="opt"><b>D</b><span>Depende de la agenda</span></div>
</div>
<div class="ask">Responde con la letra en comentarios ↓</div>
<svg class="bat" style="left:560px;top:205px;width:110px;transform:rotate(-8deg)" viewBox="0 0 120 60" fill="#1e1b4b"><path d="M60 22c-4-8-10-10-10-10l3 10c-10-6-22-6-30 2 8 0 14 4 16 10 4-4 10-4 14 0-2 6 2 12 7 16 5-4 9-10 7-16 4-4 10-4 14 0 2-6 8-10 16-10-8-8-20-8-30-2l3-10s-6 2-10 10z"/></svg>'''
for k,v in S.items(): open(k+'.html','w').write(page(v,X))
open('post-2-1.html','w').write(page(S2,X2))
CV=css+'''.abs{position:absolute;left:80px;right:140px}
.cta{display:inline-flex;background:#5b4ce6;color:#fff;font-weight:800;font-size:46px;padding:22px 40px;border-radius:999px}
.chat{background:#efeae2;border-radius:44px;padding:30px 28px;box-shadow:0 24px 60px rgba(30,27,75,.12)}
.msg{display:inline-block;background:#fff;border-radius:30px 30px 30px 8px;padding:22px 28px 14px;font-size:48px;font-weight:600;color:#111}
.msg small{display:block;text-align:right;font-family:"DejaVu Sans Mono",monospace;font-size:28px;color:#4b5563;margin-top:4px;font-weight:400}
.tagbig{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#fff;background:#6d28d9;letter-spacing:.2em;font-size:64px;padding:14px 34px;border-radius:20px;display:inline-block}'''
def cover(body):
    return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{CV}</style></head><body><div id="root"><div class="bg"></div>{BR}{body}<div class="foot">reservum.cl</div></div></body></html>'
c1='''<div class="lbl abs" style="top:420px">Gimnasio</div>
<div class="ttl abs" style="top:490px;font-size:150px">“¿Cuánto sale el <span class="kw hl">mes?”</span></div>
<div class="abs chat" style="top:1080px"><div class="msg">Hola, ¿cuánto sale el mes?<small>21:40</small></div></div>
<div class="abs" style="top:1330px"><span class="cta">De consulta a alumno</span></div>'''
c2='''<div class="abs" style="top:430px"><span class="tagbig">MITO</span></div>
<div class="ttl abs" style="top:600px;font-size:140px">Pierdo el <span class="kw hl">trato cercano</span></div>
<div class="abs" style="top:1200px"><span class="cta">¿Mito o realidad?</span></div>'''
open('reel-1-portada.html','w').write(cover(c1)); open('reel-2-portada.html','w').write(cover(c2))
