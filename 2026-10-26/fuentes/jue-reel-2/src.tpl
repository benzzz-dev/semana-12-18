<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*COMMON*/
      .cal{background:#fff;border-radius:44px;box-shadow:0 24px 60px rgba(30,27,75,.14);overflow:hidden;width:520px}
      .cal .top{background:#5b4ce6;color:#fff;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:36px;letter-spacing:.14em;padding:22px 34px}
      .cal .d{font-weight:900;font-size:230px;letter-spacing:-0.06em;line-height:1;padding:20px 34px 10px;color:#1e1b4b}
      .cal .u{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:34px;color:#6d28d9;padding:0 34px 30px;letter-spacing:.1em}
      .nails{position:absolute;right:140px;display:flex;gap:16px;align-items:flex-end}
      .nails i{display:block;width:62px;border-radius:31px 31px 14px 14px;background:linear-gradient(#c4b5fd,#8b5cf6)}
      .phone{width:860px;border-radius:70px;background:linear-gradient(170deg,#312e81,#5b4ce6 70%,#a78bfa);padding:60px 40px 50px;box-shadow:0 30px 70px rgba(30,27,75,.3);border:14px solid #111827}
      .phone .time{color:#fff;text-align:center;font-weight:800;font-size:150px;letter-spacing:-0.04em;line-height:1}
      .phone .date{color:#e0e7ff;text-align:center;font-size:40px;font-weight:600;margin-bottom:40px}
      .phone .notif{border-radius:36px}
      .phone .notif .b{font-size:44px}
      .loop{position:absolute;right:30px;top:30px;width:70px;height:70px;border-radius:50%;background:rgba(255,255,255,.2);display:flex;align-items:center;justify-content:center;font-size:48px;font-weight:900}
      .slot{position:relative}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="12" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.5" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:104px" id="s1t">Hace 3 semanas te hiciste <span class="kw hl">las uñas.</span></div>
        <div class="abs" style="top:860px" id="cal"><div class="cal"><div class="top">TU ÚLTIMA HORA</div><div class="d" id="dn">1</div><div class="u">DÍAS ATRÁS</div></div></div>
        <div class="nails" style="top:1080px" id="nl"><i style="height:150px"></i><i style="height:190px"></i><i style="height:210px"></i><i style="height:180px"></i></div>
      </section>

      <section id="s2" class="clip" data-start="2.5" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:104px" id="s2t">Reservum le escribe <span class="kw hl">solo.</span></div
        ><div class="abs" style="top:700px;right:auto" id="ph">
          <div class="phone"><div class="time">11:02</div><div class="date">jueves 19 de noviembre</div>
            <div class="notif" id="nt"><div class="ic">/*CHECK*/</div><div><div class="h">WHATSAPP · AHORA</div><div class="b">Hola Fran, ya van 3 semanas. ¿Agendamos tu retoque?</div></div></div>
          </div>
        </div>
      </section>

      <section id="s3" class="clip" data-start="5.1" data-duration="2.5" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs chat" style="top:400px" id="ch">
          <div class="top"><div class="a">/*CHECK*/</div><div><b>Nails Studio</b><span>en línea</span></div></div>
          <div class="msg out" id="m1">Hola Fran, ya van 3 semanas. ¿Agendamos tu retoque?<small>11:02 ✓✓</small></div>
          <div class="msg in" id="m2" style="font-size:64px;font-weight:900;letter-spacing:-0.02em">“Sí, el martes”<small>11:05</small></div>
          <div class="msg out" id="m3">¿Martes 24 a las 11:00 o a las 17:30?<small>11:05 ✓✓</small></div>
          <div class="chips" id="cp"><div class="chip">11:00</div><div class="chip f" id="pick">17:30</div></div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="7.6" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:96px" id="s4t">Clienta que vuelve <span class="kw hl">sin que tú la busques.</span></div>
        <div class="abs" style="top:900px" id="ag">
          <div class="ghost" style="margin-top:0"></div>
          <div class="slot" id="sl" style="margin-top:18px"><div class="loop">↻</div><div class="k">MAR 24 NOV · 17:30</div><div class="v">Retoque uñas</div><div class="s">Fran · volvió sola</div></div>
          <div class="ghost"></div>
        </div>
      </section>

      <section id="s5" class="clip" data-start="10" data-duration="2" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:430px;font-size:124px" id="s5a">Tu agenda se llena <span class="kw hl">sola.</span></div>
        <div class="abs bigbrand" style="top:960px" id="s5b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1130px" id="s5c"><span class="cta">reservum.cl</span></div>
      </section>

      <div class="foot" id="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="12" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      const pop=(s,t,o="0% 100%")=>tl.fromTo(s,{opacity:0,scale:0.8,transformOrigin:o},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},t);
      // S1
      up("#s1t",0.02,0.3);
      hl("#s1t .hl",0.35);
      tl.fromTo("#cal",{opacity:0,y:60},{opacity:1,y:0,duration:0.35,ease:"power3.out"},0.25);
      { const o={v:1}; tl.fromTo(o,{v:1},{v:21,duration:1.5,ease:"power2.in",onUpdate:()=>{document.querySelector("#dn").textContent=Math.round(o.v)}},0.5); }
      tl.fromTo("#nl i",{opacity:0,scaleY:0.3,transformOrigin:"50% 100%"},{opacity:1,scaleY:1,duration:0.3,stagger:0.08,ease:"back.out(2)"},0.4);
      tl.fromTo("#cal",{scale:1},{scale:1.06,duration:0.15,yoyo:true,repeat:1},2.0);
      // S2
      up("#s2t",2.52,0.3);
      hl("#s2t .hl",2.8);
      tl.fromTo("#ph",{opacity:0,y:120},{opacity:1,y:0,duration:0.45,ease:"power3.out"},2.6);
      tl.fromTo("#nt",{opacity:0,y:-60,scale:0.9},{opacity:1,y:0,scale:1,duration:0.4,ease:"back.out(1.8)"},3.2);
      // S3
      tl.fromTo("#ch",{opacity:0},{opacity:1,duration:0.2},5.1);
      pop("#m1",5.15,"100% 100%");
      pop("#m2",5.7);
      pop("#m3",6.3,"100% 100%");
      tl.fromTo("#cp .chip",{opacity:0,y:30},{opacity:1,y:0,duration:0.25,stagger:0.1},6.7);
      tl.fromTo("#pick",{scale:1},{scale:1.12,duration:0.15,yoyo:true,repeat:1},7.15);
      // S4
      up("#s4t",7.62,0.3);
      hl("#s4t .hl",7.9);
      tl.fromTo("#ag .ghost",{opacity:0},{opacity:1,duration:0.3},7.8);
      tl.fromTo("#sl",{opacity:0,scaleY:0.2,transformOrigin:"50% 0%"},{opacity:1,scaleY:1,duration:0.4,ease:"back.out(1.6)"},8.2);
      tl.fromTo("#sl .loop",{rotation:-180},{rotation:0,duration:0.6,ease:"power2.out"},8.4);
      // S5
      up("#s5a",10.02,0.3);
      hl("#s5a .hl",10.3);
      tl.fromTo("#s5b",{opacity:0,scale:0.8,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},10.35);
      tl.fromTo("#s5c",{opacity:0,y:30},{opacity:1,y:0,duration:0.3,ease:"power3.out"},10.55);
      tl.to("#foot",{opacity:0,duration:0.2},2.5);
      tl.to("#foot",{opacity:1,duration:0.2},7.6);
      tl.to("#foot",{opacity:0,duration:0.2},10.0);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
