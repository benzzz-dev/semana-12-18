import sys
sys.path.insert(0,'.')
from base import page, css, chk, BR
PK='<svg viewBox="0 0 100 90"><path d="M50 18c-4-8-2-14 4-16" stroke="#1e1b4b" stroke-width="5" fill="none" stroke-linecap="round"/><ellipse cx="32" cy="54" rx="24" ry="32" fill="#1e1b4b"/><ellipse cx="68" cy="54" rx="24" ry="32" fill="#1e1b4b"/><ellipse cx="50" cy="54" rx="22" ry="34" fill="#1e1b4b"/></svg>'
X='''
.big{position:absolute;left:80px;right:80px;top:260px;font-weight:900;letter-spacing:-0.045em;line-height:1.0;color:#1e1b4b;font-size:96px}
.sub{position:absolute;left:80px;right:80px;font-size:46px;font-weight:700;line-height:1.25;color:#374151}
.pk{position:absolute;opacity:.16}
.cal{position:absolute;width:430px;height:400px}
.num{position:absolute;left:80px;top:220px;font-weight:900;font-size:200px;letter-spacing:-0.06em;line-height:.85;color:#c4b5fd}
.q2{position:absolute;left:80px;right:80px;top:420px;font-size:84px}
.card{position:absolute;left:80px;right:80px;background:#fff;border-radius:40px;padding:34px 36px;box-shadow:0 24px 60px rgba(30,27,75,.12);display:flex;flex-direction:column;gap:18px}
.card .k{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:28px;letter-spacing:.12em}
.li{display:flex;align-items:center;gap:22px;font-size:42px;font-weight:700}
.li .av{flex:none;width:72px;height:72px;border-radius:50%;background:#ddd6fe;color:#5b21b6;font-weight:900;font-size:34px;display:flex;align-items:center;justify-content:center}
.li .t{flex:1}
.li .tg{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:26px;padding:8px 14px;border-radius:12px}
.tg.r{background:#fee2e2;color:#b91c1c}.tg.v{background:#5b4ce6;color:#fff}.tg.y{background:#fef3c7;color:#92400e}
.stars{display:flex;gap:10px}.stars svg{width:60px;height:60px;fill:#5b4ce6}
.mgrid{display:grid;grid-template-columns:repeat(7,1fr);gap:10px}
.mgrid b{font-family:"DejaVu Sans Mono",monospace;font-size:24px;color:#6d28d9;text-align:center}
.mgrid i{height:52px;border-radius:14px;background:#ddd6fe;font-style:normal;font-weight:800;font-size:28px;color:#4c1d95;display:flex;align-items:flex-start;justify-content:flex-start;padding:6px 10px}
.mgrid i.o{background:#fff;border:3px dashed #a78bfa;color:#6d28d9}
.mgrid i.x{background:transparent}
.endl{position:absolute;left:80px;right:80px;top:250px;font-size:92px}
.list{position:absolute;left:80px;right:80px;top:700px;display:flex;flex-direction:column;gap:22px}
.list div{display:flex;align-items:center;gap:22px;font-size:44px;font-weight:800}
.list i{flex:none;width:62px;height:62px;border-radius:18px;background:#5b4ce6;display:flex;align-items:center;justify-content:center}
.list i svg{width:38px;height:38px}
.chk{position:absolute;left:80px;right:80px;top:720px;display:flex;flex-direction:column;gap:22px}
.chk div{display:flex;align-items:center;gap:24px;background:#fff;border-radius:28px;padding:24px 28px;font-size:42px;font-weight:800;box-shadow:0 12px 30px rgba(30,27,75,.08)}
.chk i{flex:none;width:58px;height:58px;border-radius:16px;border:5px solid #5b4ce6}
'''
STAR='<svg viewBox="0 0 24 24"><path d="M12 2.5l2.9 6.1 6.6.8-4.9 4.6 1.3 6.6L12 17.3 6.1 20.6l1.3-6.6L2.5 9.4l6.6-.8z"/></svg>'
CAL='''<svg class="cal" style="left:560px;top:760px" viewBox="0 0 220 200">
<path d="M70 40 L110 -4 L150 40 Z" fill="#1e1b4b"/><ellipse cx="110" cy="42" rx="70" ry="10" fill="#1e1b4b"/><rect x="96" y="28" width="28" height="8" rx="2" fill="#a78bfa"/>
<rect x="30" y="52" width="160" height="140" rx="22" fill="#fff" stroke="#5b4ce6" stroke-width="6"/>
<rect x="30" y="52" width="160" height="38" rx="18" fill="#5b4ce6"/><rect x="30" y="72" width="160" height="18" fill="#5b4ce6"/>
<path d="M52 112 q22 -16 58 0 q36 -16 58 0 q-4 26 -30 24 q-14 -2 -28 -12 q-14 10 -28 12 q-26 2 -30 -24z" fill="#1e1b4b"/>
<ellipse cx="82" cy="120" rx="11" ry="7" fill="#fff"/><ellipse cx="138" cy="120" rx="11" ry="7" fill="#fff"/>
<path d="M88 160 q22 16 44 0" stroke="#5b4ce6" stroke-width="7" fill="none" stroke-linecap="round"/>
</svg>'''
S={}
S['post-1-1']=f'''<div class="lbl t">Feliz Halloween · 31 oct</div>
<div class="big">Hoy tu agenda viene disfrazada de <span class="kw hl">recepcionista.</span></div>
<div class="sub" style="top:780px;right:520px">Y no se saca el disfraz ni el feriado.</div>
<div class="sub" style="top:1020px;right:520px;font-size:36px;color:#6d28d9;font-family:'DejaVu Sans Mono',monospace;font-weight:700;letter-spacing:.02em">Responde, agenda y confirma.</div>
{CAL}
<div class="pk" style="left:880px;top:300px;width:120px;display:none">{PK}</div>'''
def cnt(i): return f'<div class="counter">{i}/6</div>'
S['post-2-1']=cnt(1)+f'''<div class="lbl t">Checklist post-Halloween</div>
<div class="ttl q" style="font-size:96px;top:255px">Pasó la semana más pedida del mes. <span class="kw hl" style="white-space:nowrap">4 cosas</span> para revisar el lunes.</div>
<div class="chk" style="top:820px"><div><i></i>¿Quién no llegó?</div><div><i></i>¿Quién vino por primera vez?</div><div><i></i>Reseñas pendientes</div></div>
<div class="swipe">desliza →</div>'''
S['post-2-2']=cnt(2)+'''<div class="num">1</div>
<div class="ttl q2">¿Quién no llegó? <span class="kw hl">Escríbele</span> con una hora nueva.</div>
<div class="card" style="top:820px"><div class="k">NO LLEGARON · SEMANA 26–31</div>
<div class="li"><div class="av">CR</div><div class="t">Carla R.</div><div class="tg r">JUE 18:00</div></div>
<div class="li"><div class="av">MP</div><div class="t">Martina P.</div><div class="tg r">VIE 12:30</div></div>
<div class="li"><div class="av">JS</div><div class="t">Josefa S.</div><div class="tg v">LUN 2 · 17:00</div></div></div>'''
S['post-2-3']=cnt(3)+f'''<div class="num">2</div>
<div class="ttl q2">¿Quién vino por primera vez? <span class="kw hl" style="white-space:nowrap">Vale el doble</span> si vuelve.</div>
<div class="card" style="top:880px"><div class="k">CLIENTAS NUEVAS</div>
<div class="li"><div class="av">AV</div><div class="t">Antonia V.</div><div class="tg y">★ NUEVA</div></div>
<div class="li"><div class="av">FL</div><div class="t">Fernanda L.</div><div class="tg y">★ NUEVA</div></div></div>'''
S['post-2-4']=cnt(4)+f'''<div class="num">3</div>
<div class="ttl q2">Pide reseña a las <span class="kw hl">clientas felices</span> de la semana.</div>
<div class="card" style="top:880px"><div class="stars">{STAR*5}</div>
<div class="msg out" style="font-size:38px;max-width:100%;align-self:stretch">Gracias por venir, Anto. ¿Nos dejas tu opinión? Te toma 30 segundos.<small>16:10 ✓✓</small></div></div>'''
days=''.join(f'<b>{d}</b>' for d in ['L','M','M','J','V','S','D'])
cells='<i class="x"></i>'*6
import random; random.seed(5); open_=set(random.sample(range(1,31),9))
for n in range(1,31): cells+=f'<i class="{"o" if n in open_ else ""}">{n}</i>'
S['post-2-5']=cnt(5)+f'''<div class="num">4</div>
<div class="ttl q2">Mira los huecos de <span class="kw hl">noviembre</span> y ofrécelos.</div>
<div class="card" style="top:700px;padding:26px 30px;gap:12px"><div class="k">NOVIEMBRE · HORAS LIBRES (PUNTEADAS)</div><div class="mgrid">{days}{cells}</div></div>'''
S['post-2-6']=cnt(6)+f'''<div class="lbl t">Sin planillas</div>
<div class="ttl endl"><span class="kw hl">Reservum</span> hace las cuatro sin que abras una planilla.</div>
<div class="list" style="top:760px">
<div><i>{chk}</i>Ofrece hora nueva a quien no llegó.</div>
<div><i>{chk}</i>Le escribe a la clienta nueva.</div>
<div><i>{chk}</i>Pide la reseña después de la cita.</div>
<div><i>{chk}</i>Ofrece los huecos de noviembre.</div>
</div>'''
for k,v in S.items(): open(k+'.html','w').write(page(v,X))
CV=css+'''.abs{position:absolute;left:80px;right:140px}
.cta{display:inline-flex;background:#5b4ce6;color:#fff;font-weight:800;font-size:46px;padding:22px 40px;border-radius:999px}
.big0{font-weight:900;letter-spacing:-0.06em;line-height:.85;color:#5b21b6;font-size:380px}
.lock{background:#1e1b4b;color:#fff;border-radius:60px;padding:50px 56px}
.lock .d{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:40px;letter-spacing:.12em;color:#c4b5fd}
.lock .h{font-weight:900;font-size:240px;letter-spacing:-0.06em;line-height:.9;margin-top:10px}
.pk{position:absolute;opacity:.16}
.tagbig{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#fff;background:#6d28d9;letter-spacing:.2em;font-size:48px;padding:12px 30px;border-radius:18px;display:inline-block}'''
def cover(body):
    return f'<!doctype html><html lang="es"><head><meta charset="utf-8"><style>{CV}</style></head><body><div id="root"><div class="bg"></div>{BR}{body}<div class="pk" style="left:770px;top:1460px;width:180px">{PK}</div><div class="foot">reservum.cl</div></div></body></html>'
c1='''<div class="abs" style="top:400px"><span class="tagbig">EJEMPLO</span></div>
<div class="abs big0" style="top:520px">118</div>
<div class="ttl abs" style="top:880px;font-size:120px">mensajes y tú no contestaste <span class="kw hl">ninguno.</span></div>'''
c2='''<div class="lbl abs" style="top:400px">Sábado 31 · Halloween</div>
<div class="ttl abs" style="top:470px;font-size:150px">“¿Tienes algo <span class="kw hl">hoy?”</span></div>
<div class="abs lock" style="top:900px"><div class="d">SÁBADO 31 · OCT</div><div class="h">15:02</div></div>'''
open('reel-1-portada.html','w').write(cover(c1)); open('reel-2-portada.html','w').write(cover(c2))
