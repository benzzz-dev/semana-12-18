<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*BRAND*/
      .abs{position:absolute;left:80px;right:140px}
      .w1{display:inline-block}
      .idx{font-weight:900;letter-spacing:-0.05em;font-size:200px;line-height:.85;color:#5b21b6}
      .quote{font-weight:900;letter-spacing:-0.045em;line-height:1.02;font-size:100px;color:#1e1b4b}
      .chat{background:#efeae2;border-radius:44px;padding:34px 30px;display:flex;flex-direction:column;gap:18px;box-shadow:0 24px 60px rgba(30,27,75,.14)}
      .chat .top{display:flex;align-items:center;gap:16px;font-weight:800;font-size:34px;color:#111;padding-bottom:10px;border-bottom:2px solid rgba(0,0,0,.08)}
      .chat .av{width:64px;height:64px;border-radius:50%;background:#c4b5fd;display:flex;align-items:center;justify-content:center;color:#4c1d95;font-weight:900;font-size:30px}
      .msg{max-width:86%;padding:20px 28px 14px;font-size:44px;font-weight:600;line-height:1.2;color:#111;box-shadow:0 4px 10px rgba(0,0,0,.06)}
      .msg small{display:block;text-align:right;font-family:"DejaVu Sans Mono",monospace;font-size:22px;color:#667;margin-top:6px;font-weight:400}
      .in{align-self:flex-start;background:#fff;border-radius:30px 30px 30px 8px}
      .out{align-self:flex-end;background:#d9fdd3;border-radius:30px 30px 8px 30px}
      .tick{color:#53bdeb}
      .tag{align-self:flex-end;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:24px;color:#6d28d9;letter-spacing:.12em}
      .caret{display:inline-block;width:4px;height:44px;background:#128c4a;vertical-align:-6px;margin-left:4px}
      .btns{display:flex;gap:14px;margin-top:14px}
      .btn{background:#fff;border:3px solid #5b4ce6;color:#5b21b6;font-weight:800;font-size:34px;padding:10px 24px;border-radius:999px}
      .btn.f{background:#5b4ce6;color:#fff}
      .week{display:grid;grid-template-columns:repeat(5,1fr);gap:14px}
      .day{background:rgba(255,255,255,.75);border-radius:26px;height:300px;padding-top:20px;text-align:center;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;color:#6d28d9;letter-spacing:.06em;box-shadow:0 10px 24px rgba(30,27,75,.08)}
      .card{position:absolute;top:96px;width:150px;height:160px;border-radius:22px;background:#5b4ce6;color:#fff;display:flex;flex-direction:column;align-items:center;justify-content:center;box-shadow:0 18px 36px rgba(91,76,230,.35)}
      .card b{font-size:44px;font-weight:900;letter-spacing:-0.03em}
      .card span{font-family:"DejaVu Sans Mono",monospace;font-size:22px;opacity:.9}
      .cta{display:inline-flex;align-items:center;background:#5b4ce6;color:#fff;font-weight:800;font-size:60px;padding:30px 52px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
      .bigbrand{display:flex;align-items:center;gap:26px}
      .bigbrand .ico{width:120px;height:120px;border-radius:32px;background:#5b4ce6;display:flex;align-items:center;justify-content:center;box-shadow:0 16px 34px rgba(91,76,230,.35)}
      .bigbrand .ico svg{width:72px;height:72px}
      .bigbrand .wm{font-weight:900;font-size:110px;letter-spacing:-0.04em}
      .bigbrand .wm i{font-style:normal;color:#5b4ce6}
      .dots{display:flex;gap:16px}
      .dots i{width:84px;height:84px;border-radius:50%;background:#5b4ce6;display:flex;align-items:center;justify-content:center;color:#fff;font-style:normal;font-weight:900;font-size:48px}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="12" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:430px" id="s1l">Domingo · lista rápida</div>
        <div class="ttl abs" style="top:510px;font-size:148px" id="s1t"><span class="w1">3</span> <span class="w1">mensajes</span> <span class="w1">que</span> <span class="w1 kw hl">nunca</span> <span class="w1 kw hl">más</span> <span class="w1">vas</span> <span class="w1">a</span> <span class="w1">escribir</span> <span class="w1">a</span> <span class="w1">mano</span></div>
      </section>

      <section id="s2" class="clip" data-start="2.4" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:420px;display:flex;align-items:flex-end;gap:26px" id="s2h"><div class="idx">1</div><div class="lbl" style="padding-bottom:20px">Recordatorio</div></div>
        <div class="abs quote" style="top:640px" id="s2q">“Te recuerdo tu hora de <span class="kw hl">mañana</span>”</div>
        <div class="abs chat" style="top:1020px" id="s2c">
          <div class="top"><div class="av">C</div>Camila</div>
          <div class="msg out"><span id="ty1"></span><span class="caret" id="cr1"></span><small>19:00 <span class="tick">✓✓</span></small></div>
          <div class="tag" id="tg1">ENVIADO POR RESERVUM</div>
        </div>
      </section>

      <section id="s3" class="clip" data-start="4.8" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:420px;display:flex;align-items:flex-end;gap:26px" id="s3h"><div class="idx">2</div><div class="lbl" style="padding-bottom:20px">Horas libres</div></div>
        <div class="abs quote" style="top:640px" id="s3q">“Sí, tengo hora a las <span class="kw hl">16:00</span>”</div>
        <div class="abs chat" style="top:1020px" id="s3c">
          <div class="msg in" id="s3in">¿Tienes hora hoy en la tarde?<small>11:42</small></div>
          <div class="msg out" id="s3out">Sí, tengo hora a las 16:00<div class="btns"><span class="btn f" id="b1">Reservar 16:00</span><span class="btn">17:30</span></div><small>11:42 <span class="tick">✓✓</span></small></div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="7.2" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:420px;display:flex;align-items:flex-end;gap:26px" id="s4h"><div class="idx">3</div><div class="lbl" style="padding-bottom:20px">Reagendar</div></div>
        <div class="abs quote" style="top:640px" id="s4q">“Dale, te cambio para el <span class="kw hl">viernes</span>”</div>
        <div class="abs week" style="top:1030px" id="wk">
          <div class="day">LUN</div><div class="day">MAR</div><div class="day">MIÉ</div><div class="day">JUE</div><div class="day">VIE</div>
          <div class="card" id="card" style="left:0"><b>15:00</b><span>Fran</span></div>
        </div>
      </section>

      <section id="s5" class="clip" data-start="9.6" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs dots" style="top:430px" id="dts"><i>1</i><i>2</i><i>3</i></div>
        <div class="ttl abs" style="top:580px;font-size:122px" id="s5a">Reservum los escribe <span class="kw hl">por ti</span>.</div>
        <div class="abs bigbrand" style="top:1060px" id="s5b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1260px" id="s5c"><span class="cta">Pruébalo en reservum.cl</span></div>
      </section>

      <div class="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="12" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.35},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      const type=(id,txt,t,d)=>{const o={v:0};tl.fromTo(o,{v:0},{v:txt.length,duration:d,ease:"none",onUpdate:()=>{document.getElementById(id).textContent=txt.slice(0,Math.round(o.v));}},t);};
      // S1
      tl.fromTo("#s1l",{opacity:0,y:20},{opacity:1,y:0,duration:0.25},0);
      tl.fromTo("#s1t .w1",{opacity:0,y:60},{opacity:1,y:0,duration:0.22,stagger:0.09,ease:"power3.out"},0.05);
      hl("#s1t .hl",1.05);
      // S2
      tl.fromTo("#s2h",{opacity:0,x:-60},{opacity:1,x:0,duration:0.3,ease:"power3.out"},2.4);
      up("#s2q",2.5);
      hl("#s2q .hl",2.85);
      up("#s2c",2.7,0.35);
      type("ty1","Hola Camila, te recuerdo tu hora de mañana a las 11:00. ¿Confirmas?",2.95,1.3);
      tl.to("#cr1",{opacity:0,duration:0.05},4.3);
      tl.fromTo("#tg1",{opacity:0},{opacity:1,duration:0.25},4.3);
      // S3
      tl.fromTo("#s3h",{opacity:0,x:-60},{opacity:1,x:0,duration:0.3,ease:"power3.out"},4.8);
      up("#s3q",4.9);
      hl("#s3q .hl",5.25);
      tl.fromTo("#s3c",{opacity:0,y:50},{opacity:1,y:0,duration:0.35,ease:"power3.out"},5.0);
      tl.fromTo("#s3in",{opacity:0,y:-30,scale:0.94},{opacity:1,y:0,scale:1,duration:0.28,ease:"back.out(2)"},5.2);
      tl.fromTo("#s3out",{opacity:0,y:30,scale:0.94},{opacity:1,y:0,scale:1,duration:0.3,ease:"back.out(2)"},5.75);
      tl.to("#b1",{scale:1.1,duration:0.14,yoyo:true,repeat:1},6.5);
      // S4
      tl.fromTo("#s4h",{opacity:0,x:-60},{opacity:1,x:0,duration:0.3,ease:"power3.out"},7.2);
      up("#s4q",7.3);
      hl("#s4q .hl",7.65);
      tl.fromTo("#wk .day",{opacity:0,y:50},{opacity:1,y:0,duration:0.3,stagger:0.05,ease:"power3.out"},7.4);
      tl.fromTo("#card",{opacity:0,x:355,scale:0.6},{opacity:1,x:355,scale:1,duration:0.3,ease:"back.out(2)"},7.75);
      tl.to("#card",{x:704,y:-40,rotation:4,duration:0.35,ease:"power2.in"},8.3);
      tl.to("#card",{y:0,rotation:0,duration:0.3,ease:"back.out(2)"},8.65);
      tl.to("#card",{backgroundColor:"#16a34a",duration:0.2},8.9);
      // S5
      tl.fromTo("#dts i",{opacity:0,scale:0.3},{opacity:1,scale:1,duration:0.25,stagger:0.1,ease:"back.out(2.5)"},9.6);
      up("#s5a",9.75);
      hl("#s5a .hl",10.15);
      tl.fromTo("#s5b",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(2)",transformOrigin:"0% 50%"},10.3);
      tl.fromTo("#s5c",{opacity:0,y:30},{opacity:1,y:0,duration:0.35,ease:"power3.out"},10.6);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
