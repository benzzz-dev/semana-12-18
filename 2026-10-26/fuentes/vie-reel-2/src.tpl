<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*COMMON*/
@font-face{font-family:"Noto Color Emoji";src:url("fonts/NotoColorEmoji.ttf")}
      .tagbig{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#fff;background:#6d28d9;letter-spacing:.2em;font-size:64px;padding:14px 34px;border-radius:20px;display:inline-block}
      .tagbig.r{background:#1e1b4b}
      .myth{position:relative;display:inline}
      .strike{position:absolute;height:14px;background:#c4b5fd;border-radius:9px}
      .clock{background:#fff;border-radius:40px;padding:36px 40px;box-shadow:0 24px 60px rgba(30,27,75,.14);display:flex;gap:36px;align-items:center}
      .clock svg{width:220px;height:220px;flex:none}
      .clock .r{display:flex;flex-direction:column;gap:14px}
      .clock .row{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:36px;color:#4b5563}
      .clock .row b{color:#1e1b4b}
      .clock .bad{font-weight:900;font-size:84px;color:#ef4444;letter-spacing:-0.03em;line-height:1}
      .emo{font-family:"Inter","Noto Color Emoji",sans-serif}
      .traits{display:flex;gap:16px;flex-wrap:wrap}
      .traits .chip{font-size:42px;padding:14px 28px}
      .scene{background:#fff;border-radius:44px;box-shadow:0 24px 60px rgba(30,27,75,.14);padding:30px;height:560px;overflow:hidden}
      .scene svg{width:100%;height:100%}
      .bubble2{position:absolute;right:50px;top:40px;background:#5b4ce6;color:#fff;font-weight:800;font-size:40px;padding:18px 28px;border-radius:30px 30px 8px 30px}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="13.5" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:430px" id="s1l"><span class="tagbig">MITO</span></div>
        <div class="ttl abs" style="top:600px;font-size:128px" id="s1t">“Si automatizo, pierdo el <span class="kw hl">trato cercano.”</span></div>
      </section>

      <section id="s2" class="clip" data-start="2.6" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:410px;right:auto;white-space:nowrap;font-weight:800;font-size:44px;color:#6b7280;letter-spacing:-0.02em" id="s2m">“Si automatizo, pierdo el trato cercano.”<div class="strike" id="stk" style="left:-6px;right:-6px;top:22px"></div></div>
        <div class="abs" style="top:520px" id="s2l"><span class="tagbig r">REALIDAD</span></div>
        <div class="ttl abs" style="top:680px;font-size:104px" id="s2t">Lo lejano es responder <span class="kw hl">3 horas después.</span></div>
        <div class="abs clock" style="top:1110px" id="ck">
          <svg viewBox="0 0 100 100"><circle cx="50" cy="50" r="44" fill="#f5f3ff" stroke="#5b4ce6" stroke-width="6"/><path id="arc" d="M50 6 A44 44 0 0 1 88.1 72" fill="none" stroke="#ef4444" stroke-width="8" stroke-linecap="round"/><line x1="50" y1="50" x2="50" y2="22" stroke="#1e1b4b" stroke-width="6" stroke-linecap="round"/><line id="hand" x1="50" y1="50" x2="74" y2="50" stroke="#1e1b4b" stroke-width="5" stroke-linecap="round" style="transform-origin:50px 50px"/><circle cx="50" cy="50" r="5" fill="#1e1b4b"/></svg>
          <div class="r"><div class="row">Mensaje <b>14:02</b></div><div class="row">Respuesta <b>17:05</b></div><div class="bad">+3 h</div></div>
        </div>
      </section>

      <section id="s3" class="clip" data-start="5.2" data-duration="3" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:100px" id="s3t">Reservum responde con <span class="kw hl">tu tono.</span></div>
        <div class="abs chat" style="top:740px" id="ch3">
          <div class="top"><div class="a">/*CHECK*/</div><div><b>Uñas de Vale</b><span>en línea</span></div></div>
          <div class="msg in" id="m1">Hola! ¿Tienes hora el viernes?<small>14:02</small></div>
          <div class="msg out emo" id="m2">Holi Cami! Tengo el viernes a las 17:00 💅<small>14:02 ✓✓</small></div>
        </div>
        <div class="abs traits" style="top:1390px" id="tr"><div class="chip">tus nombres</div><div class="chip">tus emojis</div><div class="chip f">al tiro</div></div>
      </section>

      <section id="s4" class="clip" data-start="8.2" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:92px" id="s4t">Tú te quedas con la conversación <span class="kw hl">en persona.</span></div>
        <div class="abs scene" style="top:860px" id="sc">
          <svg viewBox="0 0 760 500">
            <rect x="0" y="420" width="760" height="80" fill="#ede9fe"/>
            <rect x="80" y="170" width="70" height="250" rx="30" fill="#5b4ce6"/>
            <rect x="80" y="300" width="300" height="70" rx="30" fill="#5b4ce6"/>
            <rect x="200" y="370" width="30" height="50" fill="#1e1b4b"/>
            <rect x="140" y="410" width="160" height="16" rx="8" fill="#1e1b4b"/>
            <circle cx="200" cy="150" r="52" fill="#f2c4a8"/>
            <path d="M148 140c0-46 104-52 104 0-20-20-84-20-104 0z" fill="#1e1b4b"/>
            <rect x="160" y="200" width="90" height="120" rx="40" fill="#c4b5fd"/>
            <rect x="240" y="270" width="150" height="40" rx="20" fill="#c4b5fd"/>
            <circle cx="560" cy="130" r="50" fill="#e0a882"/>
            <path d="M510 120c4-50 96-50 100 0 0 20-10 40-10 40l-80 0s-12-20-10-40z" fill="#5b21b6"/>
            <rect x="515" y="180" width="95" height="170" rx="40" fill="#1e1b4b"/>
            <rect x="400" y="250" width="140" height="34" rx="17" fill="#1e1b4b"/>
            <rect x="530" y="340" width="30" height="80" fill="#1e1b4b"/><rect x="570" y="340" width="30" height="80" fill="#1e1b4b"/>
          </svg>
          <div class="bubble2" id="bb">¿Cómo te fue en la semana?</div>
        </div>
      </section>

      <section id="s5" class="clip" data-start="10.8" data-duration="2.7" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:420px;font-size:144px" id="s5a">Cercano y <span class="kw hl" style="white-space:nowrap">a tiempo.</span></div>
        <div class="abs bigbrand" style="top:1000px" id="s5b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1170px" id="s5c"><span class="cta">reservum.cl</span></div>
      </section>

      <div class="foot" id="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="13.5" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      const pop=(s,t,o="0% 100%")=>tl.fromTo(s,{opacity:0,scale:0.8,transformOrigin:o},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},t);
      // S1
      tl.fromTo("#s1l",{opacity:0,scale:0.6,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.3,ease:"back.out(2)"},0);
      up("#s1t",0.1,0.35);
      hl("#s1t .hl",0.5);
      // S2
      tl.fromTo("#s2m",{opacity:0},{opacity:1,duration:0.2},2.6);
      tl.fromTo("#stk",{scaleX:0,transformOrigin:"0% 50%"},{scaleX:1,duration:0.35,ease:"power2.out"},2.75);
      tl.fromTo("#s2l",{opacity:0,scale:0.6,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.3,ease:"back.out(2)"},3.0);
      up("#s2t",3.15,0.35);
      hl("#s2t .hl",3.5);
      tl.fromTo("#ck",{opacity:0,y:80},{opacity:1,y:0,duration:0.35,ease:"power3.out"},3.6);
      tl.fromTo("#hand",{rotation:-90},{rotation:0,duration:0.9,ease:"power2.inOut"},3.8);
      // S3
      up("#s3t",5.22,0.35);
      hl("#s3t .hl",5.55);
      tl.fromTo("#ch3",{opacity:0,y:80},{opacity:1,y:0,duration:0.35,ease:"power3.out"},5.3);
      pop("#m1",5.6);
      pop("#m2",6.0,"100% 100%");
      tl.fromTo("#tr .chip",{opacity:0,y:30},{opacity:1,y:0,duration:0.25,stagger:0.12},6.5);
      // S4
      up("#s4t",8.22,0.35);
      hl("#s4t .hl",8.55);
      tl.fromTo("#sc",{opacity:0,y:80},{opacity:1,y:0,duration:0.35,ease:"power3.out"},8.4);
      pop("#bb",8.8,"100% 100%");
      // S5
      up("#s5a",10.82,0.35);
      hl("#s5a .hl",11.1);
      tl.fromTo("#s5b",{opacity:0,scale:0.8,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},11.0);
      tl.fromTo("#s5c",{opacity:0,y:30},{opacity:1,y:0,duration:0.3,ease:"power3.out"},11.2);
      tl.to("#foot",{opacity:0,duration:0.2},2.6);tl.to("#foot",{opacity:1,duration:0.2},5.2);tl.to("#foot",{opacity:0,duration:0.2},6.6);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
