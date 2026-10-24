<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*COMMON*/
      .thumbs{display:flex;gap:14px;margin-top:6px}
      .thumbs .th{width:200px;height:200px;border-radius:20px;background:#f8fafc;border:3px solid #e5e7eb;display:flex;align-items:center;justify-content:center}
      .thumbs .th svg{width:160px;height:160px}
      .msg.photos{padding:16px 16px 12px}
      .chiprow{display:flex;gap:14px;flex-wrap:wrap;align-self:flex-end;justify-content:flex-end}
      .chiprow .chip{font-size:36px;padding:10px 22px}
      .price{background:#fff;border-radius:40px;padding:40px 44px;box-shadow:0 24px 60px rgba(30,27,75,.14);border-left:14px solid #5b4ce6}
      .price .k{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;font-size:32px;letter-spacing:.12em}
      .price .v{font-weight:900;font-size:120px;letter-spacing:-0.05em;line-height:1;margin-top:10px}
      .price .s{font-size:46px;font-weight:700;margin-top:18px;color:#374151}
      .price .s b{color:#5b21b6}
      .tag{display:inline-block;background:#ede9fe;color:#5b21b6;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:32px;padding:12px 22px;border-radius:16px;margin-top:24px}
      .bat{position:absolute;opacity:.10}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="15" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <svg class="bat" style="left:800px;top:1560px;width:170px;transform:rotate(-8deg)" viewBox="0 0 120 60" fill="#1e1b4b"><path d="M60 22c-4-8-10-10-10-10l3 10c-10-6-22-6-30 2 8 0 14 4 16 10 4-4 10-4 14 0-2 6 2 12 7 16 5-4 9-10 7-16 4-4 10-4 14 0 2-6 8-10 16-10-8-8-20-8-30-2l3-10s-6 2-10 10z"/></svg>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="3" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s1l">Estudio de tatuajes · 23:14</div>
        <div class="ttl abs" style="top:460px;font-size:112px" id="s1t">“¿Cuánto me sale <span class="kw hl">este?”</span></div>
        <div class="abs chat" style="top:740px" id="ch1">
          <div class="top"><div class="a">/*CHECK*/</div><div><b>Tinta Sur Tattoo</b><span>en línea</span></div></div>
          <div class="msg in photos" id="m1"><div class="thumbs">
            <div class="th"><svg viewBox="0 0 100 100" fill="none" stroke="#1e1b4b" stroke-width="3" stroke-linecap="round"><circle cx="50" cy="40" r="10"/><path d="M50 30c-8-12-24-4-16 8M50 30c8-12 24-4 16 8M40 40c-14 4-12 20 2 16M60 40c14 4 12 20-2 16M50 50v38M50 70c-10-4-18-2-20 6M50 64c8-6 16-6 20 0"/></svg></div>
            <div class="th"><svg viewBox="0 0 100 100" fill="none" stroke="#1e1b4b" stroke-width="3" stroke-linecap="round"><path d="M62 18a32 32 0 1 0 22 50 26 26 0 1 1-22-50z"/><path d="M28 30l3 6 6 1-5 4 1 6-5-3-5 3 1-6-5-4 6-1z"/></svg></div>
            <div class="th"><svg viewBox="0 0 100 100" fill="none" stroke="#1e1b4b" stroke-width="3" stroke-linecap="round"><path d="M10 64c10-14 22-14 30 0s20 14 30 0 20-14 22-6"/><path d="M10 78c10-10 22-10 30 0s20 10 30 0 18-10 22-4"/><path d="M40 64c-4-20 10-36 28-36-10 6-14 16-10 26"/></svg></div>
          </div><small>23:14</small></div>
          <div class="msg in" id="m1b">¿Cuánto me sale este?<small>23:14</small></div>
        </div>
      </section>

      <section id="s2" class="clip" data-start="3" data-duration="3" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:92px" id="s2t">Reservum pregunta lo justo: <span class="kw hl">zona y tamaño.</span></div>
        <div class="abs chat" style="top:720px" id="ch2">
          <div class="msg out" id="m2">¿En qué zona y de qué tamaño?<small>23:14 ✓✓</small></div>
          <div class="chiprow" id="cr1"><div class="chip f" id="za">Antebrazo</div><div class="chip">Espalda</div><div class="chip">Otro</div></div>
          <div class="chiprow" id="cr2"><div class="chip">Menos de 10 cm</div><div class="chip f" id="tb">10–20 cm</div><div class="chip">Más</div></div>
        </div>
      </section>

      <section id="s3" class="clip" data-start="6" data-duration="3" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:100px" id="s3t">Rango de precio + <span class="kw hl">evaluación.</span></div>
        <div class="abs price" style="top:720px" id="pr">
          <div class="k">ANTEBRAZO · 10–20 CM</div>
          <div class="v">Desde $80.000</div>
          <div class="s">Evaluación de <b>15 min</b>, gratis.</div>
          <div class="tag">precio final en la evaluación</div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="9" data-duration="3" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs chat" style="top:400px" id="ch4">
          <div class="msg in" id="m4" style="font-size:72px;font-weight:900;letter-spacing:-0.03em">“Sábado 7, 12:00”<small>23:16</small></div>
        </div>
        <div class="ttl abs" style="top:740px;font-size:120px" id="s4t">Agendado <span class="kw hl">✓</span></div>
        <div class="abs" style="top:920px" id="ag">
          <div class="slot" id="sl"><div class="k">SÁB 7 NOV · 12:00</div><div class="v">Evaluación tatuaje</div><div class="s">Antebrazo · 15 min</div></div>
          <div class="ghost"></div>
        </div>
      </section>

      <section id="s5" class="clip" data-start="12" data-duration="3" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:124px" id="s5a">Tú tatúas. Tu WhatsApp <span class="kw hl">cotiza.</span></div>
        <div class="abs bigbrand" style="top:1000px" id="s5b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1170px" id="s5c"><span class="cta">reservum.cl</span></div>
      </section>

      <div class="foot" id="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="15" data-track-index="5" data-volume="0.9"></audio>
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
      pop("#m1",0.5);
      tl.fromTo("#m1 .th",{opacity:0,scale:0.6},{opacity:1,scale:1,duration:0.25,stagger:0.12,ease:"back.out(2)"},0.6);
      pop("#m1b",1.2);
      // S2
      up("#s2t",3.02,0.35);
      hl("#s2t .hl",3.35);
      tl.fromTo("#ch2",{opacity:0},{opacity:1,duration:0.2},3.0);
      pop("#m2",3.3,"100% 100%");
      tl.fromTo("#cr1 .chip",{opacity:0,y:30},{opacity:1,y:0,duration:0.25,stagger:0.1},3.9);
      tl.fromTo("#cr2 .chip",{opacity:0,y:30},{opacity:1,y:0,duration:0.25,stagger:0.1},4.4);
      tl.fromTo(["#za","#tb"],{scale:1},{scale:1.1,duration:0.15,yoyo:true,repeat:1,stagger:0.3},5.0);
      // S3
      up("#s3t",6.02,0.35);
      hl("#s3t .hl",6.35);
      tl.fromTo("#pr",{opacity:0,x:120},{opacity:1,x:0,duration:0.45,ease:"power3.out"},6.3);
      tl.fromTo("#pr .tag",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},6.7);
      // S4
      tl.fromTo("#ch4",{opacity:0},{opacity:1,duration:0.2},9.0);
      pop("#m4",9.1);
      up("#s4t",9.7,0.35);
      hl("#s4t .hl",9.95);
      tl.fromTo("#sl",{opacity:0,scaleY:0.2,transformOrigin:"50% 0%"},{opacity:1,scaleY:1,duration:0.4,ease:"back.out(1.6)"},10.0);
      // S5
      up("#s5a",12.02,0.35);
      hl("#s5a .hl",12.35);
      tl.fromTo("#s5b",{opacity:0,scale:0.8,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},12.4);
      tl.fromTo("#s5c",{opacity:0,y:30},{opacity:1,y:0,duration:0.3,ease:"power3.out"},12.6);
      tl.to("#foot",{opacity:0,duration:0.2},12.0);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
