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
