<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*BRAND*/
      .abs{position:absolute;left:80px;right:140px}
      #night{position:absolute;inset:0;background:linear-gradient(170deg,#1e1b4b 0%,#14112f 60%,#0b0920 100%)}
      #night .st{position:absolute;width:6px;height:6px;border-radius:50%;background:#c4b5fd;opacity:.6}
      .wht{color:#fff}
      .shop{position:absolute;left:150px;top:910px;width:720px;height:540px}
      .awn{position:absolute;left:0;right:0;top:0;height:90px;border-radius:18px 18px 0 0;background:repeating-linear-gradient(90deg,#5b4ce6 0 90px,#c4b5fd 90px 180px)}
      .front{position:absolute;left:30px;right:30px;top:90px;bottom:0;background:#2b2466;border-radius:0 0 10px 10px;overflow:hidden}
      .win{position:absolute;left:40px;right:40px;top:40px;bottom:0;background:#fde68a;border-radius:8px 8px 0 0}
      .shut{position:absolute;left:40px;right:40px;top:40px;height:430px;background:repeating-linear-gradient(180deg,#94a3b8 0 26px,#64748b 26px 32px);border-radius:8px 8px 0 0;transform-origin:50% 0;transform:scaleY(0)}
      .sign{position:absolute;z-index:3;left:50%;top:-84px;margin-left:-150px;width:300px;height:60px;border-radius:12px;background:#fff;color:#1e1b4b;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:30px;letter-spacing:.14em;display:flex;align-items:center;justify-content:center}
      .keys{position:absolute;left:330px;top:820px}
      .bulb{position:absolute;left:420px;top:1180px;width:240px;height:240px;border-radius:50%;background:radial-gradient(circle,#fde68a 0%,rgba(253,230,138,.0) 70%)}
      .phone{position:absolute;left:200px;top:660px;width:620px;height:790px;border-radius:72px;background:#05040f;padding:16px;box-shadow:0 0 120px rgba(124,108,255,.55)}
      .screen{position:absolute;inset:16px;border-radius:58px;overflow:hidden;background:linear-gradient(180deg,#3b2f9e,#16123a)}
      .notch{position:absolute;left:50%;top:14px;width:150px;height:40px;margin-left:-75px;border-radius:20px;background:#000;z-index:9}
      .ltime{position:absolute;left:0;right:0;top:56px;text-align:center;color:#fff;font-weight:700;font-size:104px;letter-spacing:-0.03em}
      .ldate{position:absolute;left:0;right:0;top:176px;text-align:center;color:#c4b5fd;font-weight:600;font-size:30px}
      .stack{position:absolute;left:22px;right:22px;top:232px;display:flex;flex-direction:column;gap:12px}
      .n{display:flex;gap:16px;align-items:flex-start;background:#fff;border-radius:26px;padding:16px 20px}
      .n .rv{width:54px;height:54px;border-radius:15px;background:#5b4ce6;flex:none;display:flex;align-items:center;justify-content:center}
      .n .rv svg{width:32px;height:32px}
      .n .h{display:flex;justify-content:space-between;font-size:23px;color:#5b21b6;font-weight:700;font-family:"DejaVu Sans Mono",monospace}
      .n .b{font-size:31px;font-weight:700;color:#111;margin-top:2px;line-height:1.15}
      .n .b s{color:#64748b;text-decoration-thickness:4px}
      .cal{display:grid;grid-template-columns:150px 1fr;gap:14px;align-items:center}
      .cal .hr{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:32px;color:#1e1b4b;opacity:.75}
      .slot{height:92px;border-radius:22px;background:#5b4ce6;color:#fff;display:flex;align-items:center;padding-left:28px;font-weight:800;font-size:38px;box-shadow:0 10px 24px rgba(91,76,230,.25)}
      .slot small{margin-left:auto;margin-right:28px;font-family:"DejaVu Sans Mono",monospace;font-size:40px;font-weight:700;opacity:.85}
      .full{display:inline-block;background:#1e1b4b;color:#fff;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:38px;letter-spacing:.12em;padding:14px 28px;border-radius:14px}
      .cta{display:inline-flex;align-items:center;background:#5b4ce6;color:#fff;font-weight:800;font-size:60px;padding:30px 52px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
      .url{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:64px;color:#6d28d9;letter-spacing:.02em}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="13" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div id="night">
        <div class="st" style="left:880px;top:420px"></div><div class="st" style="left:760px;top:560px"></div><div class="st" style="left:940px;top:700px"></div><div class="st" style="left:120px;top:1560px"></div><div class="st" style="left:620px;top:380px"></div>
      </div>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm" id="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:420px;color:#c4b5fd" id="s1l">Fin de semana</div>
        <div class="ttl abs wht" style="top:490px;font-size:150px" id="s1t">Viernes, <span style="color:#c4b5fd">22:30</span></div>
        <div class="shop" id="shop">
          <div class="awn"></div>
          <div class="sign">CERRADO</div><div class="front"><div class="win"></div><div class="shut" id="shut"></div></div>
        </div>
      </section>

      <section id="s2" class="clip" data-start="2.4" data-duration="2.2" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs wht" style="top:470px;font-size:170px" id="s2t">Tú:<br><span style="color:#c4b5fd">cerrando</span></div>
        <svg class="keys" id="keys" width="420" height="300" viewBox="0 0 140 100" fill="none" stroke="#fde68a" stroke-width="5" stroke-linecap="round" stroke-linejoin="round"><circle cx="30" cy="40" r="20"/><circle cx="30" cy="40" r="7"/><path d="M50 40h70M100 40v16M114 40v12"/><path d="M38 60l20 30M54 84l8-6"/></svg>
        <div class="bulb" id="bulb"></div>
      </section>

      <section id="s3" class="clip" data-start="4.6" data-duration="3.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs wht" style="top:400px;font-size:80px" id="s3t">Tu WhatsApp: <span style="color:#c4b5fd">agendando el sábado</span></div>
        <div class="phone" id="phone"><div class="screen">
          <div class="ltime">22:41</div>
          <div class="ldate">viernes 23 de octubre</div>
          <div class="stack">
            <div class="n" id="p1"><div class="rv">/*CHECK*/</div><div style="flex:1"><div class="h"><span>Hora agendada</span><span>22:34</span></div><div class="b">Sáb 10:00 · Cata · corte</div></div></div>
            <div class="n" id="p2"><div class="rv">/*CHECK*/</div><div style="flex:1"><div class="h"><span>Hora agendada</span><span>22:37</span></div><div class="b">Sáb 11:30 · Diego · barba</div></div></div>
            <div class="n" id="p3"><div class="rv">/*CHECK*/</div><div style="flex:1"><div class="h"><span>Hora agendada</span><span>22:39</span></div><div class="b">Sáb 13:00 · Tomi · corte y barba</div></div></div>
            <div class="n" id="p4"><div class="rv">/*CHECK*/</div><div style="flex:1"><div class="h"><span>Reagendada</span><span>22:41</span></div><div class="b">Sáb · Nico: <s>16:00</s> → 17:30</div></div></div>
          </div>
        </div><div class="notch"></div></div>
      </section>

      <section id="s4" class="clip" data-start="8.2" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s4l">Sábado, 09:00</div>
        <div class="ttl abs" style="top:460px;font-size:104px" id="s4t">Llegas con la agenda <span class="kw hl">lista</span></div>
        <div class="abs cal" style="top:760px" id="s4c">
          <div class="hr">10:00</div><div class="slot">Cata · corte<small>✓</small></div>
          <div class="hr">11:30</div><div class="slot">Diego · barba<small>✓</small></div>
          <div class="hr">13:00</div><div class="slot">Tomi · corte y barba<small>✓</small></div>
          <div class="hr">15:00</div><div class="slot">Feña · corte<small>✓</small></div>
          <div class="hr">17:30</div><div class="slot">Nico · corte<small>✓</small></div>
        </div>
      </section>

      <section id="s5" class="clip" data-start="10.8" data-duration="2.2" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:480px;font-size:150px" id="s5a">Prueba<br><span class="kw hl">Reservum</span></div>
        <div class="abs" style="top:830px" id="s5u"><span class="url">reservum.cl</span></div>
        <div class="abs" style="top:980px;font-size:56px;font-weight:800;line-height:1.2" id="s5b">Tu WhatsApp se contesta solo. Tu agenda se llena sola.</div>
      </section>

      <div class="foot" id="ft">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="13" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      tl.set("#wm",{color:"#ffffff"},0);
      tl.set("#ft",{color:"#ffffff"},0);
      tl.set("#wm i",{color:"#a78bfa"},0);
      tl.fromTo("#s1l",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},0);
      tl.fromTo("#s1t",{opacity:0,y:50},{opacity:1,y:0,duration:0.4,ease:"power3.out"},0.05);
      tl.fromTo("#shop",{opacity:0,y:60},{opacity:1,y:0,duration:0.4,ease:"power3.out"},0.3);
      tl.fromTo("#shut",{scaleY:0},{scaleY:1,duration:1.2,ease:"power2.inOut"},0.8);
      // S2
      tl.fromTo("#s2t",{opacity:0,y:50},{opacity:1,y:0,duration:0.4,ease:"power3.out"},2.4);
      tl.fromTo("#keys",{opacity:0,rotation:-25,y:-40},{opacity:1,rotation:0,y:0,duration:0.45,ease:"back.out(2)",transformOrigin:"20% 40%"},2.6);
      tl.to("#keys",{rotation:8,duration:0.12,yoyo:true,repeat:3,transformOrigin:"20% 40%"},3.1);
      tl.fromTo("#bulb",{opacity:1,scale:1},{opacity:0,scale:0.4,duration:0.5,ease:"power2.in"},3.7);
      // S3
      tl.fromTo("#s3t",{opacity:0,y:40},{opacity:1,y:0,duration:0.4,ease:"power3.out"},4.6);
      tl.fromTo("#phone",{opacity:0,y:120},{opacity:1,y:0,duration:0.45,ease:"power3.out"},4.65);
      tl.fromTo("#phone .screen",{filter:"brightness(0.15)"},{filter:"brightness(1)",duration:0.3},5.1);
      ["#p4","#p3","#p2","#p1"].forEach((id,i)=>{
        tl.fromTo(id,{opacity:0,y:-60,scale:0.9},{opacity:1,y:0,scale:1,duration:0.28,ease:"back.out(2)"},5.5+i*0.55);
      });
      // S4 (day)
      tl.to("#night",{opacity:0,duration:0.5},8.0);
      tl.to("#wm",{color:"#1e1b4b",duration:0.3},8.1);
      tl.to("#ft",{color:"#1e1b4b",duration:0.3},8.1);
      tl.to("#wm i",{color:"#5b4ce6",duration:0.3},8.1);
      tl.fromTo("#s4l",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},8.25);
      tl.fromTo("#s4t",{opacity:0,y:40},{opacity:1,y:0,duration:0.4,ease:"power3.out"},8.3);
      tl.fromTo("#s4t .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},8.7);
      tl.fromTo("#s4c > *",{opacity:0,x:-40},{opacity:1,x:0,duration:0.25,stagger:0.08,ease:"power2.out"},8.6);
      // S5
      tl.fromTo("#s5a",{opacity:0,y:50},{opacity:1,y:0,duration:0.4,ease:"power3.out"},10.85);
      tl.fromTo("#s5a .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},11.2);
      tl.fromTo("#s5u",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(2)",transformOrigin:"0% 50%"},11.25);
      tl.fromTo("#s5b",{opacity:0,y:30},{opacity:1,y:0,duration:0.4,ease:"power3.out"},11.5);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
