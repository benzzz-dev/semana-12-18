<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*COMMON*/
      .pk{position:absolute;opacity:.16}
      .big{font-weight:900;letter-spacing:-0.06em;line-height:.85;color:#5b21b6;font-size:330px;font-variant-numeric:tabular-nums}
      .unit{font-weight:900;letter-spacing:-0.045em;line-height:1;font-size:104px;color:#1e1b4b;margin-top:10px}
      .stack{display:flex;flex-direction:column;gap:18px}
      .stack .msg{font-size:40px}
      .grid{display:grid;grid-template-columns:repeat(6,1fr);gap:14px}
      .grid i{height:62px;border-radius:14px;background:rgba(255,255,255,.7)}
      .grid i.f{background:#5b4ce6}
      .nstack{display:flex;flex-direction:column;gap:18px}
      .tagbig{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#fff;background:#6d28d9;letter-spacing:.2em;font-size:48px;padding:12px 30px;border-radius:18px;display:inline-block}
      .zero{font-weight:900;letter-spacing:-0.06em;line-height:.8;color:#5b21b6;font-size:520px}
      .moon{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:40px;letter-spacing:.06em}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="12.4" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <svg class="pk" style="left:760px;top:1450px;width:200px" viewBox="0 0 100 90"><path d="M50 18c-4-8-2-14 4-16" stroke="#1e1b4b" stroke-width="5" fill="none" stroke-linecap="round"/><ellipse cx="32" cy="54" rx="24" ry="32" fill="#1e1b4b"/><ellipse cx="68" cy="54" rx="24" ry="32" fill="#1e1b4b"/><ellipse cx="50" cy="54" rx="22" ry="34" fill="#1e1b4b"/></svg>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.2" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:420px" id="s1l"><span class="tagbig">EJEMPLO</span></div>
        <div class="ttl abs" style="top:560px;font-size:132px" id="s1t">Semana de <span class="kw hl">Halloween</span> en un salón de uñas.</div>
        <div class="lbl abs" style="top:1180px" id="s1s">Lo que su WhatsApp hizo solo ↓</div>
      </section>

      <section id="s2" class="clip" data-start="2.2" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:400px"><div class="big" id="n1">0</div><div class="unit">mensajes <span class="kw hl" id="h2">respondidos</span></div></div>
        <div class="abs stack" style="top:960px" id="st">
          <div class="msg in">¿Tienes hora para el viernes?<small>23:48</small></div>
          <div class="msg out">Sí: 11:00 o 16:30. ¿Cuál te guardo?<small>23:48 ✓✓</small></div>
          <div class="msg in">¿Cuánto salen las uñas de Halloween?<small>00:12</small></div>
        </div>
      </section>

      <section id="s3" class="clip" data-start="4.6" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:400px"><div class="big" id="n2">0</div><div class="unit">horas <span class="kw hl" id="h3">agendadas</span></div></div>
        <div class="abs grid" style="top:990px" id="gr"><i class="f"></i><i></i><i class="f"></i><i class="f"></i><i class="f"></i><i></i><i class="f"></i><i class="f"></i><i class="f"></i><i></i><i class="f"></i><i></i><i class="f"></i><i></i><i></i><i class="f"></i><i></i><i class="f"></i><i class="f"></i><i class="f"></i><i class="f"></i><i class="f"></i><i></i><i class="f"></i><i class="f"></i><i class="f"></i><i class="f"></i><i class="f"></i><i class="f"></i><i></i><i class="f"></i><i class="f"></i><i class="f"></i><i class="f"></i><i class="f"></i><i class="f"></i></div>
      </section>

      <section id="s4" class="clip" data-start="7.0" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:400px"><div class="big" id="n3">0</div><div class="unit">recordatorios <span class="kw hl" id="h4">enviados</span></div></div>
        <div class="abs nstack" style="top:990px">
          <div class="notif" id="no1"><div class="ic">/*CHECK*/</div><div><div class="h">RECORDATORIO · MAÑANA</div><div class="b">Te esperamos a las 11:00.</div></div></div>
          <div class="notif" id="no2"><div class="ic">/*CHECK*/</div><div><div class="h">RECORDATORIO · HOY</div><div class="b">Tu hora es a las 16:30.</div></div></div>
        </div>
      </section>

      <section id="s5" class="clip" data-start="9.4" data-duration="3" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:380px;display:flex;align-items:flex-end;gap:40px"><div class="zero" id="z">0</div><div class="moon" id="mn" style="padding-bottom:40px">00:00 ☾</div></div>
        <div class="ttl abs" style="top:830px;font-size:84px" id="s5t">mensajes contestados por ti <span class="kw hl" style="white-space:nowrap">a medianoche.</span></div>
        <div class="abs bigbrand" style="top:1180px" id="s5b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1340px" id="s5c"><span class="cta">reservum.cl</span></div>
      </section>

      <div class="foot" id="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="12.4" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      const pop=(s,t,o="0% 100%")=>tl.fromTo(s,{opacity:0,scale:0.8,transformOrigin:o},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},t);
      const count=(id,to,t,d)=>{const c={v:0};tl.fromTo(c,{v:0},{v:to,duration:d,ease:"power2.out",onUpdate:()=>{document.getElementById(id).textContent=Math.round(c.v);}},t);};
      // S1
      pop("#s1l",0.0,"0% 50%");
      up("#s1t",0.05,0.35);
      hl("#s1t .hl",0.4);
      tl.fromTo("#s1s",{opacity:0},{opacity:1,duration:0.3},0.7);
      // S2
      up("#n1",2.2,0.3); count("n1",118,2.25,1.3);
      hl("#h2",2.6);
      tl.fromTo("#st .msg",{opacity:0,y:40},{opacity:1,y:0,duration:0.3,stagger:0.35,ease:"power3.out"},2.5);
      // S3
      up("#n2",4.6,0.3); count("n2",41,4.65,1.3);
      hl("#h3",5.0);
      tl.fromTo("#gr i.f",{opacity:0,y:-120},{opacity:1,y:0,duration:0.3,stagger:0.03,ease:"bounce.out"},4.8);
      // S4
      up("#n3",7.0,0.3); count("n3",37,7.05,1.3);
      hl("#h4",7.4);
      tl.fromTo("#no1",{opacity:0,y:-60},{opacity:1,y:0,duration:0.35,ease:"back.out(1.6)"},7.4);
      tl.fromTo("#no2",{opacity:0,y:-60},{opacity:1,y:0,duration:0.35,ease:"back.out(1.6)"},8.1);
      // S5
      tl.fromTo("#z",{opacity:0,scale:1.6,transformOrigin:"0% 100%"},{opacity:1,scale:1,duration:0.4,ease:"power3.out"},9.4);
      tl.fromTo("#mn",{opacity:0},{opacity:1,duration:0.3},9.7);
      up("#s5t",9.6,0.35);
      hl("#s5t .hl",10.0);
      tl.fromTo("#s5b",{opacity:0,scale:0.8,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},10.15);
      tl.fromTo("#s5c",{opacity:0,y:30},{opacity:1,y:0,duration:0.3,ease:"power3.out"},10.3);
      tl.to("#foot",{opacity:0,duration:0.2},9.4);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
