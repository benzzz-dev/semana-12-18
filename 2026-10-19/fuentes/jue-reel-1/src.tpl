<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*BRAND*/
      .abs{position:absolute;left:80px;right:140px}
      .big9{font-weight:900;font-size:520px;letter-spacing:-0.06em;line-height:.85;color:#5b4ce6}
      .pk{position:absolute;width:150px;height:150px}
      .phone{position:absolute;left:200px;top:600px;width:620px;height:860px;border-radius:72px;background:#0f0d24;padding:16px;box-shadow:0 40px 80px rgba(30,27,75,.35)}
      .screen{position:absolute;inset:16px;border-radius:58px;overflow:hidden;background:linear-gradient(180deg,#2b2466,#110e2e)}
      .notch{position:absolute;left:50%;top:14px;width:150px;height:40px;margin-left:-75px;border-radius:20px;background:#000;z-index:9}
      .ltime{position:absolute;left:0;right:0;top:70px;text-align:center;color:#fff;font-weight:700;font-size:110px;letter-spacing:-0.03em}
      .ldate{position:absolute;left:0;right:0;top:200px;text-align:center;color:#c4b5fd;font-weight:600;font-size:30px}
      .stack{position:absolute;left:22px;right:22px;top:270px;display:flex;flex-direction:column;gap:14px}
      .n{display:flex;gap:16px;align-items:flex-start;background:#fff;border-radius:28px;padding:18px 20px}
      .n .wa{width:58px;height:58px;border-radius:16px;background:#128c4a;flex:none;display:flex;align-items:center;justify-content:center;color:#fff;font-weight:900;font-size:30px}
      .n .h{display:flex;justify-content:space-between;font-size:24px;color:#444;font-weight:700;font-family:"DejaVu Sans Mono",monospace}
      .n .b{font-size:32px;font-weight:600;color:#111;margin-top:4px;line-height:1.15}
      .chat{background:#efeae2;border-radius:44px;padding:30px 28px;box-shadow:0 24px 60px rgba(30,27,75,.14)}
      .msg{background:#d9fdd3;border-radius:30px 30px 8px 30px;padding:24px 28px 16px;font-size:38px;font-weight:600;color:#111;line-height:1.2}
      .msg.in{background:#fff;border-radius:30px 30px 30px 8px;display:inline-block;margin-bottom:18px}
      .pl{display:flex;justify-content:space-between;font-size:38px;padding:10px 0;border-bottom:2px dashed rgba(0,0,0,.14)}
      .pl b{font-weight:800}
      .chips{display:flex;gap:12px;flex-wrap:wrap;margin-top:16px}
      .chip{background:#fff;border:3px solid #5b4ce6;color:#5b21b6;font-weight:800;font-size:32px;padding:10px 22px;border-radius:999px}
      .msg small{display:block;text-align:right;font-family:"DejaVu Sans Mono",monospace;font-size:22px;color:#667;margin-top:6px;font-weight:400}
      .cal{display:grid;grid-template-columns:150px 1fr 1fr;gap:14px;align-items:center}
      .cal .hd{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:32px;letter-spacing:.08em;text-align:center}
      .cal .hr{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;color:#1e1b4b;opacity:.7}
      .slot{height:84px;border-radius:20px;border:4px dashed #c4b5fd;background:rgba(255,255,255,.55);position:relative;overflow:hidden}
      .slot i{position:absolute;inset:0;background:#5b4ce6;transform-origin:0 50%;transform:scaleX(0);display:flex;align-items:center;padding-left:22px;color:#fff;font-style:normal;font-weight:800;font-size:28px}
      .full{display:inline-block;background:#1e1b4b;color:#fff;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:40px;letter-spacing:.14em;padding:14px 28px;border-radius:14px}
      .cta{display:inline-flex;align-items:center;background:#5b4ce6;color:#fff;font-weight:800;font-size:60px;padding:30px 52px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="13" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:420px" id="s1l">Halloween · sábado 31</div>
        <div class="ttl abs" style="top:490px;font-size:132px" id="s1t">Faltan <span class="kw hl">9 días</span> para Halloween</div>
        <div class="abs" style="top:960px;display:flex;align-items:flex-end;gap:30px" id="s1n">
          <div class="big9" id="cd">14</div>
          <svg class="pk" id="pk" style="position:relative;margin-bottom:40px" viewBox="0 0 100 100" fill="none" stroke="#f97316" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"><path d="M50 26c-6-10 2-16 8-16"/><ellipse cx="50" cy="60" rx="38" ry="30"/><path d="M50 30c-12 0-16 14-16 30s4 30 16 30M50 30c12 0 16 14 16 30s-4 30-16 30"/></svg>
        </div>
        <div class="lbl abs" style="top:1400px;color:#1e1b4b;opacity:.75;letter-spacing:.1em" id="s1s">y tu WhatsApp ya lo sabe</div>
      </section>

      <section id="s2" class="clip" data-start="2.6" data-duration="3.0" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:410px;font-size:100px" id="s2t">Llueven <span class="kw hl">consultas</span></div>
        <div class="phone" id="phone"><div class="screen">
          <div class="ltime">11:24</div>
          <div class="ldate">jueves 22 de octubre</div>
          <div class="stack">
            <div class="n" id="p1"><div class="wa">W</div><div style="flex:1"><div class="h"><span>Vale</span><span>ahora</span></div><div class="b">¿Hacen uñas de telaraña?</div></div></div>
            <div class="n" id="p2"><div class="wa">W</div><div style="flex:1"><div class="h"><span>Coni</span><span>hace 2 min</span></div><div class="b">¿Maquillaje de Catrina?</div></div></div>
            <div class="n" id="p3"><div class="wa">W</div><div style="flex:1"><div class="h"><span>Fer</span><span>hace 5 min</span></div><div class="b">¿Tienes el 31?</div></div></div>
            <div class="n" id="p4"><div class="wa">W</div><div style="flex:1"><div class="h"><span>+9 más</span><span>hace 8 min</span></div><div class="b">¿Cuánto sale el diseño de calabaza?</div></div></div>
          </div>
        </div><div class="notch"></div></div>
      </section>

      <section id="s3" class="clip" data-start="5.6" data-duration="2.8" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s3l">Reservum responde</div>
        <div class="ttl abs" style="top:460px;font-size:96px" id="s3t">Catálogo, precios y <span class="kw hl">horas libres</span></div>
        <div class="abs chat" style="top:760px" id="s3c">
          <div class="msg in" id="s3q">¿Hacen uñas de telaraña?</div>
          <div class="msg" id="s3a">¡Sí! Diseños de Halloween:
            <div class="pl" style="margin-top:12px"><span>Telaraña</span><b>$12.000</b></div>
            <div class="pl"><span>Calabaza</span><b>$14.000</b></div>
            <div class="pl" style="border:0"><span>Sangre falsa</span><b>$13.000</b></div>
            <div class="chips" id="s3ch"><span class="chip">Jue 29 · 17:00</span><span class="chip">Vie 30 · 11:00</span></div>
            <small>11:24 ✓✓</small>
          </div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="8.4" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:410px;font-size:88px;white-space:nowrap" id="s4t">Agenda del 30 y 31:</div>
        <div class="abs" style="top:540px" id="s4f"><span class="full">LLENA ✓</span></div>
        <div class="abs cal" style="top:700px" id="s4c">
          <div></div><div class="hd">VIE 30</div><div class="hd">SÁB 31</div>
          <div class="hr">10:00</div><div class="slot"><i>Uñas</i></div><div class="slot"><i>Catrina</i></div>
          <div class="hr">12:00</div><div class="slot"><i>Telaraña</i></div><div class="slot"><i>Uñas</i></div>
          <div class="hr">15:00</div><div class="slot"><i>Maquillaje</i></div><div class="slot"><i>Calabaza</i></div>
          <div class="hr">17:00</div><div class="slot"><i>Uñas</i></div><div class="slot"><i>Peinado</i></div>
          <div class="hr">19:00</div><div class="slot"><i>Catrina</i></div><div class="slot"><i>Uñas</i></div>
        </div>
      </section>

      <section id="s5" class="clip" data-start="10.8" data-duration="2.2" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:520px;font-size:150px" id="s5a">Tú pintas.</div>
        <div class="ttl abs" style="top:720px;font-size:120px" id="s5b">Tu agenda se llena <span class="kw hl">sola.</span></div>
        <div class="abs" style="top:1120px" id="s5c"><span class="cta">Prueba Reservum</span></div>
      </section>

      <div class="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="13" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const cd={v:14};
      tl.fromTo("#s1l",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},0);
      tl.fromTo("#s1t",{opacity:0,y:50},{opacity:1,y:0,duration:0.4,ease:"power3.out"},0.05);
      tl.fromTo("#s1t .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},0.45);
      tl.fromTo("#s1n",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(1.8)",transformOrigin:"0% 100%"},0.2);
      tl.fromTo(cd,{v:14},{v:9,duration:1.3,ease:"power2.out",onUpdate:()=>{document.getElementById("cd").textContent=Math.round(cd.v);}},0.35);
      tl.fromTo("#pk",{opacity:0,rotation:-20,scale:0.6},{opacity:1,rotation:0,scale:1,duration:0.45,ease:"back.out(2)"},1.4);
      tl.to("#cd",{scale:1.08,duration:0.12,yoyo:true,repeat:1,transformOrigin:"0% 100%"},1.65);
      tl.fromTo("#s1s",{opacity:0,y:20},{opacity:.75,y:0,duration:0.35},1.8);
      // S2
      tl.fromTo("#s2t",{opacity:0,y:40},{opacity:1,y:0,duration:0.35,ease:"power3.out"},2.6);
      tl.fromTo("#s2t .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},2.95);
      tl.fromTo("#phone",{opacity:0,y:120},{opacity:1,y:0,duration:0.45,ease:"power3.out"},2.65);
      ["#p4","#p3","#p2","#p1"].forEach((id,i)=>{
        tl.fromTo(id,{opacity:0,y:-60,scale:0.9},{opacity:1,y:0,scale:1,duration:0.28,ease:"back.out(2)"},3.05+i*0.38);
      });
      tl.to("#phone",{x:-10,duration:0.05,yoyo:true,repeat:5},4.7);
      // S3
      tl.fromTo("#s3l",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},5.6);
      tl.fromTo("#s3t",{opacity:0,y:40},{opacity:1,y:0,duration:0.4,ease:"power3.out"},5.65);
      tl.fromTo("#s3t .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},6.0);
      tl.fromTo("#s3c",{opacity:0,y:80},{opacity:1,y:0,duration:0.4,ease:"power3.out"},5.75);
      tl.fromTo("#s3q",{opacity:0,x:-40},{opacity:1,x:0,duration:0.3},5.9);
      tl.fromTo("#s3a",{opacity:0,y:40,scale:0.95},{opacity:1,y:0,scale:1,duration:0.4,ease:"back.out(1.6)",transformOrigin:"100% 100%"},6.3);
      tl.fromTo("#s3ch .chip",{opacity:0,scale:0.7},{opacity:1,scale:1,duration:0.3,stagger:0.2,ease:"back.out(2)"},7.0);
      // S4
      tl.fromTo("#s4t",{opacity:0,y:40},{opacity:1,y:0,duration:0.4,ease:"power3.out"},8.45);
      tl.fromTo("#s4c",{opacity:0,y:60},{opacity:1,y:0,duration:0.4,ease:"power3.out"},8.5);
      tl.fromTo("#s4c .slot i",{scaleX:0},{scaleX:1,duration:0.22,stagger:0.11,ease:"power2.out"},8.8);
      tl.fromTo("#s4f",{opacity:0,scale:0.6},{opacity:1,scale:1,duration:0.35,ease:"back.out(2.2)",transformOrigin:"0% 50%"},10.0);
      // S5
      tl.fromTo("#s5a",{opacity:0,y:50},{opacity:1,y:0,duration:0.4,ease:"power3.out"},10.85);
      tl.fromTo("#s5b",{opacity:0,y:50},{opacity:1,y:0,duration:0.4,ease:"power3.out"},11.1);
      tl.fromTo("#s5b .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},11.45);
      tl.fromTo("#s5c",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(2)",transformOrigin:"0% 50%"},11.5);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
