<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*COMMON*/
      @font-face{font-family:"Emoji";src:url("fonts/NotoColorEmoji.ttf")}
      #root{font-family:"Inter","Emoji",sans-serif}
      .pk{position:absolute;opacity:.16}
      .lock{background:#1e1b4b;color:#fff;border-radius:60px;padding:60px 56px;box-shadow:0 30px 70px rgba(30,27,75,.3)}
      .lock .d{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:40px;letter-spacing:.12em;color:#c4b5fd}
      .lock .h{font-weight:900;font-size:260px;letter-spacing:-0.06em;line-height:.9;margin-top:10px}
      .lock .notif{margin-top:40px}
      .day{background:#fff;border-radius:40px;padding:30px 34px;box-shadow:0 24px 60px rgba(30,27,75,.14);display:flex;flex-direction:column;gap:14px}
      .day .k{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:30px;letter-spacing:.12em}
      .row{display:flex;align-items:center;gap:22px}
      .row b{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:34px;width:130px;color:#1e1b4b}
      .row span{flex:1;border-radius:20px;padding:16px 24px;font-weight:800;font-size:38px;background:#ddd6fe;color:#4c1d95}
      .row span.free{background:#f5f3ff;color:#6d28d9;border:4px dashed #a78bfa}
      .row span.new{background:#5b4ce6;color:#fff}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="11.4" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <svg class="pk" style="left:770px;top:1460px;width:180px" viewBox="0 0 100 90"><path d="M50 18c-4-8-2-14 4-16" stroke="#1e1b4b" stroke-width="5" fill="none" stroke-linecap="round"/><ellipse cx="32" cy="54" rx="24" ry="32" fill="#1e1b4b"/><ellipse cx="68" cy="54" rx="24" ry="32" fill="#1e1b4b"/><ellipse cx="50" cy="54" rx="22" ry="34" fill="#1e1b4b"/></svg>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.2" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s1l">Halloween · feriado</div>
        <div class="abs lock" style="top:470px" id="lk">
          <div class="d">SÁBADO 31 · OCT</div>
          <div class="h" id="hr">15:02</div>
          <div class="notif" id="n1"><div class="ic" style="background:#25d366">/*CHECK*/</div><div><div class="h" style="font-size:28px;color:#6b7280">WHATSAPP · AHORA</div><div class="b">¿Tienes algo hoy?</div></div></div>
        </div>
      </section>

      <section id="s2" class="clip" data-start="2.2" data-duration="4.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:96px" id="s2t">Pelo de disfraz, <span class="kw hl">para hoy.</span></div>
        <div class="abs chat" style="top:640px" id="ch">
          <div class="top"><div class="a">/*CHECK*/</div><div><b>Estudio Color Lila</b><span>en línea</span></div></div>
          <div class="msg in" id="m1">¿Tienes algo hoy? Necesito el pelo verde para la fiesta 😅<small>15:02</small></div>
          <div class="msg out" id="m2">Queda una hora hoy: 17:30. ¿Te la guardo?<small>15:02 ✓✓</small></div>
          <div class="chips" id="cp"><div class="chip f">Sí, guárdala</div><div class="chip">Otro día</div></div>
        </div>
        <div class="lbl abs" style="top:1340px" id="s2s">Respondido en segundos</div>
      </section>

      <section id="s3" class="clip" data-start="6.8" data-duration="2.2" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs chat" style="top:400px;padding:24px 28px" id="ch3"><div class="msg in" id="m3" style="font-size:64px;font-weight:900">¡Sí!<small>15:03</small></div></div>
        <div class="ttl abs" style="top:660px;font-size:120px" id="s3t">Agendado <span class="kw hl">✓</span></div>
        <div class="abs day" style="top:860px" id="dy">
          <div class="k">SÁB 31 · AGENDA</div>
          <div class="row"><b>11:00</b><span>Uñas Halloween</span></div>
          <div class="row"><b>13:30</b><span>Maquillaje</span></div>
          <div class="row"><b>15:00</b><span>Color fantasía</span></div>
          <div class="row"><b>17:30</b><span class="free" id="fs">Libre</span></div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="9.0" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:420px;font-size:128px" id="s4a">La última hora también <span class="kw hl" style="white-space:nowrap">se vende.</span></div>
        <div class="abs bigbrand" style="top:1000px" id="s4b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1170px" id="s4c"><span class="cta">reservum.cl</span></div>
      </section>

      <div class="foot" id="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="11.4" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      const pop=(s,t,o="0% 100%")=>tl.fromTo(s,{opacity:0,scale:0.8,transformOrigin:o},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},t);
      // S1
      tl.fromTo("#s1l",{opacity:0},{opacity:1,duration:0.2},0);
      tl.fromTo("#lk",{opacity:0,y:60},{opacity:1,y:0,duration:0.3,ease:"power3.out"},0.0);
      tl.fromTo("#n1",{opacity:0,y:-50},{opacity:1,y:0,duration:0.35,ease:"back.out(1.6)"},0.5);
      // S2
      up("#s2t",2.2,0.35); hl("#s2t .hl",2.5);
      tl.fromTo("#ch",{opacity:0,y:80},{opacity:1,y:0,duration:0.35,ease:"power3.out"},2.3);
      pop("#m1",2.5);
      pop("#m2",4.0,"100% 100%");
      tl.fromTo("#cp .chip",{opacity:0,y:30},{opacity:1,y:0,duration:0.25,stagger:0.12},4.5);
      tl.fromTo("#s2s",{opacity:0},{opacity:1,duration:0.3},4.3);
      tl.fromTo("#cp .chip.f",{scale:1},{scale:1.1,duration:0.15,yoyo:true,repeat:1},6.2);
      // S3
      tl.fromTo("#ch3",{opacity:0},{opacity:1,duration:0.2},6.8);
      pop("#m3",6.85);
      up("#s3t",7.1,0.35); hl("#s3t .hl",7.35);
      tl.fromTo("#dy",{opacity:0,y:60},{opacity:1,y:0,duration:0.35,ease:"power3.out"},7.0);
      tl.to("#fs",{backgroundColor:"#5b4ce6",color:"#ffffff",borderColor:"#5b4ce6",duration:0.3},7.7);
      { const c={v:0}; tl.fromTo(c,{v:0},{v:1,duration:0.02,onUpdate:()=>{document.getElementById("fs").textContent=c.v>0.5?"Pelo verde · Cami":"Libre";}},7.75); }
      tl.fromTo("#fs",{scale:1},{scale:1.06,duration:0.15,yoyo:true,repeat:1,transformOrigin:"0% 50%"},7.8);
      // S4
      up("#s4a",9.0,0.35); hl("#s4a .hl",9.3);
      tl.fromTo("#s4b",{opacity:0,scale:0.8,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},9.2);
      tl.fromTo("#s4c",{opacity:0,y:30},{opacity:1,y:0,duration:0.3,ease:"power3.out"},9.35);
      tl.to("#foot",{opacity:0,duration:0.2},9.0);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
