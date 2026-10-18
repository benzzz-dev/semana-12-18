<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*BRAND*/
      .abs{position:absolute;left:80px;right:140px}
      .chairs{display:flex;gap:40px}
      .chair{width:220px;height:300px;position:relative}
      .chair .back{position:absolute;left:40px;top:70px;width:140px;height:130px;border-radius:30px 30px 10px 10px;background:#5b4ce6}
      .chair .seat{position:absolute;left:22px;top:190px;width:176px;height:44px;border-radius:14px;background:#4338ca}
      .chair .leg{position:absolute;left:100px;top:234px;width:20px;height:44px;background:#1e1b4b}
      .chair .base{position:absolute;left:50px;top:274px;width:120px;height:16px;border-radius:8px;background:#1e1b4b}
      .chair .head{position:absolute;left:72px;top:0;width:76px;height:76px;border-radius:50%;background:#f3d3c1;border:6px solid #1e1b4b}
      .chair .cape{position:absolute;left:52px;top:64px;width:116px;height:130px;border-radius:50px 50px 16px 16px;background:#c4b5fd}
      .cols{display:grid;grid-template-columns:1fr 1fr;gap:28px}
      .col{border-radius:34px;padding:24px 20px;min-height:820px;position:relative}
      .col.off{background:#e5e7eb;filter:saturate(0)}
      .col.on{background:rgba(255,255,255,.75);box-shadow:0 18px 40px rgba(91,76,230,.18);border:4px solid #c4b5fd}
      .col h4{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;letter-spacing:.12em;margin-bottom:6px}
      .off h4{color:#6b7280}.on h4{color:#6d28d9}
      .col .sub{font-size:28px;font-weight:700;color:#374151;margin-bottom:18px}
      .chat{display:flex;align-items:center;justify-content:space-between;background:#fff;border-radius:18px;padding:9px 16px;margin-bottom:7px;font-size:27px;font-weight:700;color:#111}
      .off .chat{background:#f9fafb;color:#6b7280}
      .chat b{font-family:"DejaVu Sans Mono",monospace;font-size:26px;font-weight:700}
      .off .chat b{color:#6b7280}
      .on .chat b{color:#5b4ce6}
      .tot{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;margin-top:16px}
      .off .tot{color:#b91c1c}.on .tot{color:#6d28d9}
      .chips{display:flex;flex-wrap:wrap;gap:8px;margin-top:12px}
      .chip{background:#5b4ce6;color:#fff;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:24px;padding:8px 12px;border-radius:12px}
      .cta{display:inline-flex;align-items:center;background:#5b4ce6;color:#fff;font-weight:800;font-size:60px;padding:30px 52px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
      .bigbrand{display:flex;align-items:center;gap:26px}
      .bigbrand .ico{width:120px;height:120px;border-radius:32px;background:#5b4ce6;display:flex;align-items:center;justify-content:center;box-shadow:0 16px 34px rgba(91,76,230,.35)}
      .bigbrand .ico svg{width:72px;height:72px}
      .bigbrand .wm{font-weight:900;font-size:110px;letter-spacing:-0.04em}
      .bigbrand .wm i{font-style:normal;color:#5b4ce6}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="14" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:420px" id="s1l">Peluquería · hora de almuerzo</div>
        <div class="ttl abs" style="top:490px;font-size:150px" id="s1t">Sábado <span class="kw hl">13:00.</span></div>
        <div class="ttl abs" style="top:840px;font-size:104px" id="s1b">3 sillas ocupadas.</div>
        <div class="abs chairs" style="top:1080px" id="ch">
          <div class="chair"><div class="back"></div><div class="cape"></div><div class="head"></div><div class="seat"></div><div class="leg"></div><div class="base"></div></div>
          <div class="chair"><div class="back"></div><div class="cape"></div><div class="head"></div><div class="seat"></div><div class="leg"></div><div class="base"></div></div>
          <div class="chair"><div class="back"></div><div class="cape"></div><div class="head"></div><div class="seat"></div><div class="leg"></div><div class="base"></div></div>
        </div>
      </section>

      <section id="s2" class="clip" data-start="2.6" data-duration="7.0" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:76px" id="s2t">9 chats <span style="color:#b91c1c">sin responder</span></div>
        <div class="ttl abs" style="top:400px;font-size:76px;opacity:0" id="s3t">9 chats <span class="kw hl">respondidos</span></div>
        <div class="abs cols" style="top:540px">
          <div class="col off" id="cl">
            <h4>SIN RESERVUM</h4><div class="sub">3/3 sillas ocupadas</div>
            <div class="chat">¿Hora hoy?<b>✓✓</b></div><div class="chat">¿Corte martes?<b>✓✓</b></div><div class="chat">¿Precio color?<b>✓✓</b></div>
            <div class="chat">¿Atienden 31?<b>✓✓</b></div><div class="chat">¿Mañana 11?<b>✓✓</b></div><div class="chat">¿Hay hora?<b>✓✓</b></div>
            <div class="chat">¿Brushing?<b>✓✓</b></div><div class="chat">¿Martes 18?<b>✓✓</b></div><div class="chat">¿Me agendas?<b>✓✓</b></div>
            <div class="tot">0 respondidos</div>
          </div>
          <div class="col on" id="cr">
            <h4>CON RESERVUM</h4><div class="sub">3/3 sillas ocupadas</div>
            <div class="chat">¿Hora hoy?<b>✓✓</b></div><div class="chat">¿Corte martes?<b>✓✓</b></div><div class="chat">¿Precio color?<b>✓✓</b></div>
            <div class="chat">¿Atienden 31?<b>✓✓</b></div><div class="chat">¿Mañana 11?<b>✓✓</b></div><div class="chat">¿Hay hora?<b>✓✓</b></div>
            <div class="chat">¿Brushing?<b>✓✓</b></div><div class="chat">¿Martes 18?<b>✓✓</b></div><div class="chat">¿Me agendas?<b>✓✓</b></div>
            <div class="tot">9 respondidos</div>
            <div class="sub sub2" style="margin:14px 0 0">+5 horas para el martes:</div><div class="chips" id="chips"><span class="chip">MAR 10:00</span><span class="chip">MAR 11:30</span><span class="chip">MAR 15:00</span><span class="chip">MAR 17:00</span><span class="chip">MAR 18:30</span></div>
          </div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="9.6" data-duration="4.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:420px" id="s4l">+5 horas para el martes</div>
        <div class="ttl abs" style="top:490px;font-size:126px" id="s4a">El sábado se trabaja.</div>
        <div class="ttl abs" style="top:780px;font-size:112px" id="s4b">El WhatsApp se contesta <span class="kw hl">solo.</span></div>
        <div class="abs bigbrand" style="top:1130px" id="s4c"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1320px" id="s4d"><span class="cta">Pruébalo en reservum.cl</span></div>
      </section>

      <div class="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="14" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      // S1
      tl.fromTo("#s1l",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},0);
      up("#s1t",0.05); hl("#s1t .hl",0.45);
      up("#s1b",0.5);
      tl.fromTo("#ch .chair",{opacity:0,y:80},{opacity:1,y:0,duration:0.35,stagger:0.18,ease:"back.out(1.8)"},0.7);
      tl.fromTo("#ch .head",{scale:0},{scale:1,duration:0.25,stagger:0.18,ease:"back.out(2.5)"},1.1);
      // S2: sin Reservum
      up("#s2t",2.6);
      tl.fromTo("#cl",{opacity:0,x:-80},{opacity:1,x:0,duration:0.4,ease:"power3.out"},2.65);
      tl.fromTo("#cr",{opacity:0},{opacity:0.25,duration:0.4},2.7);
      tl.fromTo("#cr .chat, #cr .tot, #cr .chip, #cr .sub2",{opacity:0},{opacity:0,duration:0.01},2.6);
      tl.fromTo("#cl .chat",{opacity:0,y:-30},{opacity:1,y:0,duration:0.2,stagger:0.22,ease:"back.out(2)"},3.0);
      tl.fromTo("#cl .tot",{opacity:0},{opacity:1,duration:0.3},5.1);
      tl.to("#cl",{x:-8,duration:0.05,yoyo:true,repeat:5},5.3);
      // S3: con Reservum
      tl.to("#s2t",{opacity:0,y:-30,duration:0.25},5.9);
      tl.fromTo("#s3t",{opacity:0,y:50},{opacity:1,y:0,duration:0.4,ease:"power3.out"},6.0);
      hl("#s3t .hl",6.4);
      tl.to("#cl",{opacity:0.7,duration:0.3},6.0);
      tl.to("#cr",{opacity:1,duration:0.3},6.0);
      tl.fromTo("#cr .chat",{opacity:0,x:40},{opacity:1,x:0,duration:0.18,stagger:0.17,ease:"back.out(2)"},6.3);
      tl.fromTo("#cr .tot",{opacity:0},{opacity:1,duration:0.3},7.9);
      tl.fromTo("#cr .sub2",{opacity:0},{opacity:1,duration:0.25},8.05);
      tl.fromTo("#cr .chip",{opacity:0,scale:0.4},{opacity:1,scale:1,duration:0.22,stagger:0.18,ease:"back.out(2.5)"},8.2);
      // S4
      tl.fromTo("#s4l",{opacity:0},{opacity:1,duration:0.3},9.6);
      up("#s4a",9.65);
      up("#s4b",10.15); hl("#s4b .hl",10.6);
      tl.fromTo("#s4c",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(2)",transformOrigin:"0% 50%"},11.1);
      tl.fromTo("#s4d",{opacity:0,y:30},{opacity:1,y:0,duration:0.35,ease:"power3.out"},11.4);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
