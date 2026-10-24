<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*BRAND*/
      .abs{position:absolute;left:80px;right:140px}
      .phone{position:absolute;left:250px;top:700px;width:420px;height:740px;border-radius:66px;background:#111827;padding:16px;box-shadow:0 40px 80px rgba(30,27,75,.3)}
      .scr{width:100%;height:100%;border-radius:52px;background:linear-gradient(170deg,#4338ca 0%,#7c3aed 55%,#db2777 100%);position:relative;overflow:hidden;display:flex;flex-direction:column;align-items:center;color:#fff}
      .notch{position:absolute;top:16px;left:50%;width:130px;height:36px;margin-left:-65px;border-radius:20px;background:#111827}
      .date{margin-top:90px;font-size:30px;font-weight:600;opacity:.9}
      .clock{font-size:150px;font-weight:800;letter-spacing:-0.04em;line-height:1}
      .lock-n{width:88%;margin-top:40px;background:rgba(255,255,255,.88);border-radius:24px;padding:16px 18px;color:#111;display:flex;gap:14px;align-items:center}
      .lock-n .wa{width:48px;height:48px;border-radius:13px;background:#128c4a;flex:none;color:#fff;font-weight:900;font-size:30px;display:flex;align-items:center;justify-content:center}
      .lock-n b{font-size:30px;display:block}
      .lock-n span{font-size:28px;color:#444}
      .num{font-weight:900;letter-spacing:-0.05em;font-size:360px;line-height:.9;color:#5b21b6}
      .appi{position:absolute;left:80px;top:1020px;width:300px;height:300px;border-radius:72px;background:#128c4a;display:flex;align-items:center;justify-content:center;box-shadow:0 30px 60px rgba(18,140,74,.3)}
      .appi svg{width:170px;height:170px}
      .badge{position:absolute;right:-40px;top:-40px;min-width:130px;height:130px;padding:0 20px;border-radius:65px;background:#ef4444;color:#fff;font-weight:900;font-size:76px;display:flex;align-items:center;justify-content:center;border:8px solid #fff}
      .stack{display:flex;flex-direction:column;gap:22px}
      .n{display:flex;gap:20px;align-items:center;background:#fff;border-radius:30px;padding:22px 26px;box-shadow:0 14px 30px rgba(30,27,75,.13)}
      .n .wa{width:64px;height:64px;border-radius:18px;background:#128c4a;flex:none;display:flex;align-items:center;justify-content:center;color:#fff;font-weight:900;font-size:32px}
      .n .h{font-size:30px;color:#555;font-weight:700;font-family:"DejaVu Sans Mono",monospace}
      .n .b{font-size:46px;font-weight:800;color:#111;margin-top:2px}
      .duo{display:flex;gap:28px}
      .card{flex:1;background:rgba(255,255,255,.8);border-radius:34px;padding:26px 28px;box-shadow:0 14px 30px rgba(30,27,75,.1)}
      .card .v{font-weight:900;font-size:150px;letter-spacing:-0.05em;line-height:1;color:#5b21b6}
      .card .k{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:30px;letter-spacing:.1em;text-transform:uppercase;margin-top:6px}
      .grid{display:grid;grid-template-columns:repeat(3,1fr);gap:16px}
      .slot{height:84px;border-radius:18px;background:#ddd6fe;position:relative;overflow:hidden;font-family:"DejaVu Sans Mono",monospace;font-size:30px;font-weight:700;display:flex;align-items:center;padding-left:20px}
      .slot i{position:absolute;inset:0;background:#5b4ce6;transform:scaleX(0);transform-origin:0 50%}
      .slot span{position:relative;z-index:2;color:#4c1d95}
      .cta{display:inline-flex;align-items:center;background:#5b4ce6;color:#fff;font-weight:800;font-size:60px;padding:30px 52px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
      .bigbrand{display:flex;align-items:center;gap:26px}
      .bigbrand .ico{width:120px;height:120px;border-radius:32px;background:#5b4ce6;display:flex;align-items:center;justify-content:center;box-shadow:0 16px 34px rgba(91,76,230,.35)}
      .bigbrand .ico svg{width:72px;height:72px}
      .bigbrand .wm{font-weight:900;font-size:110px;letter-spacing:-0.04em}
      .bigbrand .wm i{font-style:normal;color:#5b4ce6}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="13" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s1l">Después del fin de semana</div>
        <div class="ttl abs" style="top:460px;font-size:124px" id="s1t">Lunes, <span class="kw hl">9:00.</span></div>
        <div class="phone" id="ph"><div class="scr"><div class="notch"></div>
          <div class="date">lunes 26 de octubre</div><div class="clock" id="clk">8:59</div>
          <div class="lock-n" id="ln"><div class="wa">W</div><div><b>WhatsApp</b><span>23 mensajes nuevos</span></div></div>
        </div></div>
      </section>

      <section id="s2" class="clip" data-start="2.6" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs num" style="top:420px" id="cnt">0</div>
        <div class="ttl abs" style="top:760px;font-size:110px" id="s2t">mensajes<br><span class="kw hl">sin leer</span></div>
        <div class="appi" id="app"><svg viewBox="0 0 24 24" fill="#fff"><path d="M12 2a10 10 0 0 0-8.6 15.1L2 22l5-1.3A10 10 0 1 0 12 2zm0 2a8 8 0 1 1-4.1 14.9l-.3-.2-3 .8.8-2.9-.2-.3A8 8 0 0 1 12 4zm-3.3 4c-.2 0-.5 0-.7.3-.3.3-1 1-1 2.4s1 2.8 1.2 3c.1.2 2 3.1 4.9 4.3 2.4 1 2.9.8 3.4.7.5 0 1.7-.7 1.9-1.4.2-.7.2-1.3.2-1.4l-.4-.3-2-1c-.3-.1-.5-.1-.7.1l-.9 1.1c-.2.2-.3.2-.6.1-.3-.1-1.2-.5-2.3-1.4-.8-.8-1.4-1.7-1.5-2-.2-.3 0-.4.1-.6l.5-.5.3-.5v-.5l-1-2.3c-.2-.6-.5-.6-.7-.6h-.5z"/></svg><div class="badge" id="bdg">0</div></div>
      </section>

      <section id="s3" class="clip" data-start="5.0" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s3l">Sábado y domingo, sin respuesta</div>
        <div class="abs stack" style="top:480px" id="st">
          <div class="n" id="q1"><div class="wa">W</div><div><div class="h">Javiera · sáb 22:14</div><div class="b">¿Tienes hora hoy?</div></div></div>
          <div class="n" id="q2"><div class="wa">W</div><div><div class="h">Matías · dom 11:02</div><div class="b">¿Cuánto sale?</div></div></div>
          <div class="n" id="q3"><div class="wa">W</div><div><div class="h">Carla · dom 19:40</div><div class="b">¿Atienden el sábado?</div></div></div>
          <div class="n" id="q4"><div class="wa">W</div><div><div class="h">+20 chats más</div><div class="b">¿Me agendas el lunes?</div></div></div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="7.6" data-duration="2.8" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s4l">Con Reservum</div>
        <div class="abs duo" style="top:470px" id="duo">
          <div class="card"><div class="v" id="v1">0</div><div class="k">respondidos</div></div>
          <div class="card"><div class="v" id="v2">0</div><div class="k">agendados</div></div>
        </div>
        <div class="abs grid" style="top:850px" id="grid">
          <div class="slot"><i></i><span>LUN 10:00</span></div><div class="slot"><i></i><span>LUN 12:30</span></div><div class="slot"><i></i><span>LUN 17:00</span></div>
          <div class="slot"><i></i><span>MAR 11:00</span></div><div class="slot"><i></i><span>MAR 15:30</span></div><div class="slot"><i></i><span>MIÉ 10:30</span></div>
          <div class="slot"><i></i><span>MIÉ 18:00</span></div><div class="slot"><i></i><span>JUE 12:00</span></div><div class="slot"><i></i><span>VIE 16:00</span></div>
        </div>
        <div class="ttl abs" style="top:1220px;font-size:74px" id="s4t">Y tú recién <span class="kw hl">abriendo.</span></div>
      </section>

      <section id="s5" class="clip" data-start="10.4" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:430px;font-size:132px" id="s5a">Tu WhatsApp se contesta <span class="kw hl">solo.</span></div>
        <div class="abs bigbrand" style="top:1010px" id="s5b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1210px" id="s5c"><span class="cta">Pruébalo en reservum.cl</span></div>
      </section>

      <div class="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="13" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      const count=(id,a,b,t,d)=>{const c={v:a};tl.fromTo(c,{v:a},{v:b,duration:d,ease:"power1.out",onUpdate:()=>{document.getElementById(id).textContent=Math.round(c.v);}},t);};
      // S1
      tl.fromTo("#s1l",{opacity:0},{opacity:1,duration:0.3},0);
      up("#s1t",0.02,0.35);
      hl("#s1t .hl",0.35);
      tl.fromTo("#ph",{opacity:0,y:160},{opacity:1,y:0,duration:0.5,ease:"power3.out"},0.15);
      const ck={v:0};tl.fromTo(ck,{v:0},{v:1,duration:0.02,onUpdate:()=>{document.getElementById("clk").textContent=ck.v>0.5?"9:00":"8:59";}},0.7);
      tl.fromTo("#clk",{scale:1.15},{scale:1,duration:0.3,ease:"back.out(2)"},0.7);
      tl.fromTo("#ln",{opacity:0,y:-40,scale:0.9},{opacity:1,y:0,scale:1,duration:0.35,ease:"back.out(2)"},0.95);
      tl.to("#ph",{rotation:-2,duration:0.08,yoyo:true,repeat:5},1.0);
      // S2
      tl.fromTo("#cnt",{opacity:0,scale:0.6,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.3,ease:"back.out(2)"},2.6);
      count("cnt",0,23,2.65,1.5); count("bdg",0,23,2.65,1.5);
      up("#s2t",2.7);
      hl("#s2t .hl",3.05);
      tl.fromTo("#app",{opacity:0,scale:0.6},{opacity:1,scale:1,duration:0.4,ease:"back.out(2)"},2.8);
      tl.to("#bdg",{scale:1.18,duration:0.1,yoyo:true,repeat:3},4.15);
      // S3
      tl.fromTo("#s3l",{opacity:0},{opacity:1,duration:0.3},5.0);
      ["#q1","#q2","#q3","#q4"].forEach((id,i)=>{
        tl.fromTo(id,{opacity:0,y:-80,scale:0.9},{opacity:1,y:0,scale:1,duration:0.3,ease:"back.out(2)"},5.05+i*0.3);
      });
      tl.to("#st",{y:20,duration:0.6,ease:"sine.inOut"},6.6);
      // S4
      tl.fromTo("#s4l",{opacity:0},{opacity:1,duration:0.3},7.6);
      tl.fromTo("#duo .card",{opacity:0,y:60},{opacity:1,y:0,duration:0.35,stagger:0.1,ease:"power3.out"},7.65);
      count("v1",0,23,7.8,1.0); count("v2",0,9,8.0,1.2);
      tl.fromTo("#grid .slot",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.2,stagger:0.04},7.85);
      tl.to("#grid .slot i",{scaleX:1,duration:0.16,stagger:0.1,ease:"power2.out"},8.05);
      tl.to("#grid .slot span",{color:"#ffffff",duration:0.1,stagger:0.1},8.1);
      up("#s4t",8.7);
      hl("#s4t .hl",9.0);
      // S5
      up("#s5a",10.42);
      hl("#s5a .hl",10.75);
      tl.fromTo("#s5b",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(2)",transformOrigin:"0% 50%"},10.6);
      tl.fromTo("#s5c",{opacity:0,y:30},{opacity:1,y:0,duration:0.35,ease:"power3.out"},10.8);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
