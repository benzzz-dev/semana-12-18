<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*BRAND*/
      .abs{position:absolute;left:80px;right:140px}
      .chat{background:#efeae2;border-radius:44px;padding:30px 28px;display:flex;flex-direction:column;gap:20px;box-shadow:0 24px 60px rgba(30,27,75,.14)}
      .msg{max-width:86%;padding:20px 26px 12px;font-size:46px;font-weight:700;line-height:1.18;color:#111;box-shadow:0 4px 10px rgba(0,0,0,.06)}
      .msg small{display:block;text-align:right;font-family:"DejaVu Sans Mono",monospace;font-size:28px;color:#667;margin-top:4px;font-weight:400}
      .in{align-self:flex-start;background:#fff;border-radius:30px 30px 30px 8px}
      .out{align-self:flex-end;background:#d9fdd3;border-radius:30px 30px 8px 30px}
      .ph{width:400px;height:400px;border-radius:22px;background:linear-gradient(160deg,#312e81,#581c87);display:flex;align-items:center;justify-content:center;margin-bottom:12px;position:relative}
      .ph .tag{position:absolute;left:16px;top:16px;background:rgba(0,0,0,.45);color:#fff;font-family:"DejaVu Sans Mono",monospace;font-size:28px;font-weight:700;padding:6px 14px;border-radius:12px}
      .num{font-weight:900;letter-spacing:-0.05em;font-size:330px;line-height:.9;color:#5b21b6}
      .thumbs{display:grid;grid-template-columns:repeat(7,1fr);gap:14px}
      .th{aspect-ratio:1;border-radius:18px;background:#fff;padding:8px;box-shadow:0 8px 18px rgba(30,27,75,.12)}
      .th div{width:100%;height:100%;border-radius:12px;background:linear-gradient(160deg,#312e81,#581c87);display:flex;align-items:center;justify-content:center}
      .th svg{width:80%;height:80%}
      .chips{display:flex;flex-direction:column;gap:14px;margin-top:10px}
      .chip{display:flex;align-items:center;gap:16px;background:#fff;border-radius:20px;padding:14px 20px;font-size:42px;font-weight:800;color:#1e1b4b}
      .chip b{font-family:"DejaVu Sans Mono",monospace;font-size:28px;color:#6d28d9;letter-spacing:.1em;width:150px;flex:none}
      .chip .s{background:#5b4ce6;color:#fff;border-radius:999px;padding:6px 20px;font-size:38px}
      .day{background:rgba(255,255,255,.75);border-radius:34px;padding:24px;box-shadow:0 14px 30px rgba(30,27,75,.1)}
      .day h4{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:36px;letter-spacing:.12em;margin-bottom:16px}
      .row{display:flex;gap:18px;align-items:center;height:82px;border-top:2px dashed rgba(30,27,75,.12);font-family:"DejaVu Sans Mono",monospace;font-size:32px;color:#374151;position:relative}
      .row .busy{position:absolute;left:150px;right:0;top:10px;bottom:10px;border-radius:16px;background:#ddd6fe;color:#4c1d95;font-family:"Inter",sans-serif;font-weight:700;font-size:32px;display:flex;align-items:center;padding-left:20px}
      .row .new{background:#5b4ce6;color:#fff}
      .stamp{display:inline-block;background:#1e1b4b;color:#fff;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:48px;letter-spacing:.14em;padding:16px 32px;border-radius:16px}
      .cta{display:inline-flex;align-items:center;background:#5b4ce6;color:#fff;font-weight:800;font-size:60px;padding:30px 52px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
      .bigbrand{display:flex;align-items:center;gap:26px}
      .bigbrand .ico{width:120px;height:120px;border-radius:32px;background:#5b4ce6;display:flex;align-items:center;justify-content:center;box-shadow:0 16px 34px rgba(91,76,230,.35)}
      .bigbrand .ico svg{width:72px;height:72px}
      .bigbrand .wm{font-weight:900;font-size:110px;letter-spacing:-0.04em;display:flex;align-items:baseline}
      .pk{display:inline-block;width:30px;height:30px;margin-left:2px;position:relative;top:0}
      .bat{position:absolute;opacity:.18}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="14" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <svg class="bat" style="left:820px;top:330px;width:110px" viewBox="0 0 90 44"><path fill="#1e1b4b" d="M45 14c3-6 6-6 8 0 8-10 22-12 37-6-9 2-13 9-12 18-6-5-13-4-17 3-4-4-8-4-16 6-8-10-12-10-16-6-4-7-11-8-17-3 1-9-3-16-12-18 15-6 29-4 37 6 2-6 5-6 8 0z"/></svg>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.8" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s1l">Maquillaje · Halloween</div>
        <div class="ttl abs" style="top:460px;font-size:112px" id="s1t">¿Me puedes hacer <span class="kw hl">este?</span></div>
        <div class="abs chat" style="top:740px" id="c1">
          <div class="msg in" id="m1"><div class="ph"><span class="tag">FOTO</span>/*SKULL*/</div>¿Me puedes hacer este?<small>15:12</small></div>
        </div>
      </section>

      <section id="s2" class="clip" data-start="2.8" data-duration="2.7" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs num" style="top:400px" id="cnt">1</div>
        <div class="ttl abs" style="top:700px;font-size:100px" id="s2t">iguales en <span class="kw hl">una tarde.</span></div>
        <div class="abs thumbs" style="top:1000px" id="th">
          /*THUMBS*/
        </div>
      </section>

      <section id="s3" class="clip" data-start="5.5" data-duration="2.9" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s3l">Reservum responde al instante</div>
        <div class="ttl abs" style="top:460px;font-size:84px" id="s3t">Duración, valor y <span class="kw hl">horas libres.</span></div>
        <div class="abs chat" style="top:740px" id="c3">
          <div class="msg out" id="m3">¡Sí! Maquillaje calavera:
            <div class="chips">
              <div class="chip"><b>DURA</b>90 min</div>
              <div class="chip"><b>VALOR</b>desde $25.000</div>
              <div class="chip"><b>HORAS</b><span class="s">jue 17:00</span><span class="s">vie 11:30</span></div>
            </div><small>15:12 ✓✓</small></div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="8.4" data-duration="2.9" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs chat" style="top:400px" id="c4">
          <div class="msg in" id="m4">El viernes 11:30<small>15:13</small></div>
          <div class="msg out" id="m5">Agendado ✓ Viernes 30, 11:30.<small>15:13 ✓✓</small></div>
        </div>
        <div class="abs day" style="top:800px" id="day">
          <h4>VIERNES 30</h4>
          <div class="row">10:00<div class="busy">Novia · prueba</div></div>
          <div class="row" id="slotrow">11:30<div class="busy new" id="nb">Calavera · 90 min</div></div>
          <div class="row">13:00<div class="busy">Catrina</div></div>
          <div class="row">15:00</div>
        </div>
        <div class="abs" style="top:1290px" id="s4s"><span class="stamp">AGENDADO ✓</span></div>
      </section>

      <section id="s5" class="clip" data-start="11.3" data-duration="2.7" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:430px;font-size:124px" id="s5a">Tú maquillas. Tu WhatsApp <span class="kw hl">agenda.</span></div>
        <div class="abs bigbrand" style="top:1020px" id="s5b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<svg class="pk" viewBox="0 0 30 30"><rect x="13" y="1" width="4" height="7" rx="2" fill="#15803d"/><ellipse cx="15" cy="18" rx="14" ry="11" fill="#f97316"/><path d="M10 9.5Q15 13 20 9.5M8 18Q15 24 22 18" stroke="#ea580c" stroke-width="1.6" fill="none"/></svg></div></div>
        <div class="abs" style="top:1210px" id="s5c"><span class="cta">Pruébalo en reservum.cl</span></div>
      </section>

      <div class="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="14" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      // S1
      tl.fromTo("#s1l",{opacity:0},{opacity:1,duration:0.3},0);
      up("#s1t",0.02,0.35);
      hl("#s1t .hl",0.35);
      tl.fromTo("#c1",{opacity:0,y:120},{opacity:1,y:0,duration:0.45,ease:"power3.out"},0.2);
      tl.fromTo("#m1",{opacity:0,scale:0.85,transformOrigin:"0% 100%"},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},0.45);
      // S2
      tl.fromTo("#cnt",{opacity:0,scale:0.6,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.3,ease:"back.out(2)"},2.8);
      const c={v:1};
      tl.fromTo(c,{v:1},{v:14,duration:1.4,ease:"none",onUpdate:()=>{document.getElementById("cnt").textContent=""+Math.round(c.v);}},2.85);
      up("#s2t",2.9);
      hl("#s2t .hl",3.25);
      tl.fromTo("#th .th",{opacity:0,scale:0.3},{opacity:1,scale:1,duration:0.2,stagger:0.1,ease:"back.out(2.5)"},2.85);
      tl.to("#cnt",{scale:1.08,duration:0.12,yoyo:true,repeat:1,transformOrigin:"0% 50%"},4.3);
      // S3
      tl.fromTo("#s3l",{opacity:0},{opacity:1,duration:0.3},5.5);
      up("#s3t",5.55);
      hl("#s3t .hl",5.9);
      tl.fromTo("#c3",{opacity:0,y:100},{opacity:1,y:0,duration:0.4,ease:"power3.out"},5.6);
      tl.fromTo("#m3 .chip",{opacity:0,x:-40},{opacity:1,x:0,duration:0.3,stagger:0.3,ease:"power3.out"},6.0);
      // S4
      tl.fromTo("#m4",{opacity:0,scale:0.85,transformOrigin:"0% 100%"},{opacity:1,scale:1,duration:0.3,ease:"back.out(2)"},8.45);
      tl.fromTo("#m5",{opacity:0,scale:0.85,transformOrigin:"100% 100%"},{opacity:1,scale:1,duration:0.3,ease:"back.out(2)"},9.0);
      tl.fromTo("#day",{opacity:0,y:60},{opacity:1,y:0,duration:0.4,ease:"power3.out"},8.6);
      tl.fromTo("#nb",{opacity:0,y:-160},{opacity:1,y:0,duration:0.45,ease:"bounce.out"},9.2);
      tl.fromTo("#s4s",{opacity:0,scale:0.5,rotation:-8},{opacity:1,scale:1,rotation:0,duration:0.35,ease:"back.out(2.5)",transformOrigin:"0% 50%"},9.75);
      // S5
      up("#s5a",11.32);
      hl("#s5a .hl",11.7);
      tl.fromTo("#s5b",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(2)",transformOrigin:"0% 50%"},11.5);
      tl.fromTo("#s5c",{opacity:0,y:30},{opacity:1,y:0,duration:0.35,ease:"power3.out"},11.7);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
