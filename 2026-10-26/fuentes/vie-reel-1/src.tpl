<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*COMMON*/
      .db{position:absolute;opacity:.10}
      .plans{background:#fff;border-radius:40px;padding:34px 38px;box-shadow:0 24px 60px rgba(30,27,75,.14);display:flex;flex-direction:column;gap:22px}
      .plans .k{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:30px;letter-spacing:.12em}
      .plan{display:flex;justify-content:space-between;align-items:center;border-radius:28px;padding:26px 30px;background:#f5f3ff}
      .plan b{font-weight:800;font-size:46px;letter-spacing:-0.02em}
      .plan span{font-weight:900;font-size:50px;color:#5b21b6;letter-spacing:-0.03em}
      .plan.pop{background:#5b4ce6;color:#fff}
      .plan.pop span{color:#fff}
      .free{background:#fff;border-radius:40px;padding:38px 40px;box-shadow:0 24px 60px rgba(30,27,75,.14);border-left:14px solid #5b4ce6}
      .free .k{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:30px;letter-spacing:.12em}
      .free .v{font-weight:900;font-size:76px;letter-spacing:-0.04em;margin-top:8px;line-height:1.02}
      .chiprow{display:flex;gap:16px;flex-wrap:wrap;margin-top:30px}
      .chiprow .chip{font-size:42px;padding:14px 28px}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="13.6" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <svg class="db" style="left:700px;top:1560px;width:240px;transform:rotate(-14deg)" viewBox="0 0 120 50" fill="#1e1b4b"><rect x="4" y="10" width="12" height="30" rx="3"/><rect x="18" y="4" width="12" height="42" rx="3"/><rect x="30" y="21" width="60" height="8" rx="3"/><rect x="90" y="4" width="12" height="42" rx="3"/><rect x="104" y="10" width="12" height="30" rx="3"/></svg>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s1l">Gimnasio · DM de las 21:40</div>
        <div class="ttl abs" style="top:460px;font-size:128px" id="s1t">“¿Cuánto sale el <span class="kw hl">mes?”</span></div>
        <div class="abs chat" style="top:830px" id="ch1">
          <div class="top"><div class="a">/*CHECK*/</div><div><b>Box Pulso Funcional</b><span>en línea</span></div></div>
          <div class="msg in" id="m1">Hola, ¿cuánto sale el mes?<small>21:40</small></div>
        </div>
      </section>

      <section id="s2" class="clip" data-start="2.6" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:100px" id="s2t">Reservum responde con <span class="kw hl">planes…</span></div>
        <div class="abs plans" style="top:700px" id="pl">
          <div class="k">PLANES · RESPONDIDO 21:40</div>
          <div class="plan"><b>2 veces por semana</b><span>$24.990</span></div>
          <div class="plan pop"><b>Libre mensual</b><span>$34.990</span></div>
          <div class="plan"><b>Trimestral libre</b><span>$89.990</span></div>
        </div>
      </section>

      <section id="s3" class="clip" data-start="5.2" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:104px" id="s3t">…y una clase de prueba <span class="kw hl">gratis.</span></div>
        <div class="abs free" style="top:740px" id="fr">
          <div class="k">CLASE DE PRUEBA · 60 MIN</div>
          <div class="v">¿Cuándo vienes?</div>
          <div class="chiprow" id="cr"><div class="chip f" id="lu">Lun 19:00</div><div class="chip">Mié 07:30</div><div class="chip">Sáb 10:00</div></div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="7.8" data-duration="2.8" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs chat" style="top:400px" id="ch4">
          <div class="msg in" id="m4" style="font-size:72px;font-weight:900;letter-spacing:-0.03em">“Lunes 19:00”<small>21:41</small></div>
        </div>
        <div class="ttl abs" style="top:720px;font-size:120px" id="s4t">Agendado <span class="kw hl">✓</span></div>
        <div class="abs" style="top:900px" id="ag">
          <div class="slot" id="sl"><div class="k">LUN 2 NOV · 19:00</div><div class="v">Clase de prueba</div><div class="s">Funcional · 60 min</div></div>
        </div>
        <div class="abs notif" style="top:1290px" id="nt"><div class="ic">/*CHECK*/</div><div><div class="h">RECORDATORIO · DOM 20:00</div><div class="b">Mañana 19:00, tu clase.</div></div></div>
      </section>

      <section id="s5" class="clip" data-start="10.6" data-duration="3" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:420px;font-size:136px" id="s5a">De consulta a <span class="kw hl">alumno.</span></div>
        <div class="abs bigbrand" style="top:1000px" id="s5b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1170px" id="s5c"><span class="cta">reservum.cl</span></div>
      </section>

      <div class="foot" id="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="13.6" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      const pop=(s,t,o="0% 100%")=>tl.fromTo(s,{opacity:0,scale:0.8,transformOrigin:o},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},t);
      // S1
      tl.fromTo("#s1l",{opacity:0},{opacity:1,duration:0.2},0);
      up("#s1t",0.02,0.3);
      hl("#s1t .hl",0.35);
      tl.fromTo("#ch1",{opacity:0,y:80},{opacity:1,y:0,duration:0.35,ease:"power3.out"},0.15);
      pop("#m1",0.6);
      // S2
      up("#s2t",2.62,0.35);
      hl("#s2t .hl",2.95);
      tl.fromTo("#pl",{opacity:0,y:80},{opacity:1,y:0,duration:0.35,ease:"power3.out"},2.8);
      tl.fromTo("#pl .plan",{opacity:0,x:80},{opacity:1,x:0,duration:0.3,stagger:0.18,ease:"power3.out"},3.1);
      tl.fromTo("#pl .plan.pop",{scale:1},{scale:1.04,duration:0.15,yoyo:true,repeat:1},4.2);
      // S3
      up("#s3t",5.22,0.35);
      hl("#s3t .hl",5.55);
      tl.fromTo("#fr",{opacity:0,x:120},{opacity:1,x:0,duration:0.4,ease:"power3.out"},5.4);
      tl.fromTo("#cr .chip",{opacity:0,y:30},{opacity:1,y:0,duration:0.25,stagger:0.12},5.9);
      tl.fromTo("#lu",{scale:1},{scale:1.12,duration:0.15,yoyo:true,repeat:1},6.9);
      // S4
      tl.fromTo("#ch4",{opacity:0},{opacity:1,duration:0.2},7.8);
      pop("#m4",7.9);
      up("#s4t",8.4,0.35);
      hl("#s4t .hl",8.65);
      tl.fromTo("#sl",{opacity:0,scaleY:0.2,transformOrigin:"50% 0%"},{opacity:1,scaleY:1,duration:0.4,ease:"back.out(1.6)"},8.6);
      tl.fromTo("#nt",{opacity:0,y:-60},{opacity:1,y:0,duration:0.35,ease:"back.out(1.6)"},8.9);
      // S5
      up("#s5a",10.62,0.35);
      hl("#s5a .hl",10.95);
      tl.fromTo("#s5b",{opacity:0,scale:0.8,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},11.0);
      tl.fromTo("#s5c",{opacity:0,y:30},{opacity:1,y:0,duration:0.3,ease:"power3.out"},11.2);
      tl.to("#foot",{opacity:0,duration:0.2},7.8);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
