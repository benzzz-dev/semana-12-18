<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*COMMON*/
      .web{position:absolute;right:-30px;top:150px;width:340px;opacity:.16}
      .bat{position:absolute;opacity:.10}
      .band{position:absolute;left:80px;right:140px;border-radius:44px;padding:34px 38px;overflow:hidden}
      .band.no{background:#e5e7eb;box-shadow:0 20px 50px rgba(30,27,75,.08)}
      .band.si{background:#5b4ce6;color:#fff;box-shadow:0 24px 60px rgba(91,76,230,.35)}
      .band .k{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:34px;letter-spacing:.14em}
      .band.no .k{color:#6b7280}
      .band.si .k{color:#ede9fe}
      .band .big{display:flex;align-items:baseline;gap:22px;margin-top:10px}
      .band .n{font-weight:900;font-size:180px;letter-spacing:-0.06em;line-height:1}
      .band .of{font-weight:800;font-size:64px;letter-spacing:-0.03em}
      .band.no .n{color:#6b7280}
      .band .sub{font-weight:800;font-size:64px;letter-spacing:-0.03em;line-height:1}
      .band.no .sub{color:#4b5563}
      .dots{margin-top:26px;display:flex;flex-wrap:wrap;gap:8px}
      .dots i{width:30px;height:30px;border-radius:9px;display:flex;align-items:center;justify-content:center}
      .band.no .dots i{background:#cbd5e1}
      .band.no .dots i.ok{background:#22c55e}
      .band.si .dots i{background:#fff}
      .band.si .dots i svg{width:24px;height:24px}
      .band.si .dots i svg path{stroke:#5b4ce6}
      .vs2{position:absolute;left:80px;right:140px;display:flex;gap:30px}
      .vs2 .c{flex:1;border-radius:44px;padding:40px 36px;height:560px}
      .vs2 .c.no{background:#e5e7eb}
      .vs2 .c.si{background:#5b4ce6;color:#fff;box-shadow:0 24px 60px rgba(91,76,230,.35)}
      .vs2 .h{font-weight:900;font-size:72px;letter-spacing:-0.03em}
      .vs2 .c.no .h{color:#4b5563}
      .vs2 .n{font-weight:900;font-size:300px;letter-spacing:-0.06em;line-height:1;margin-top:10px}
      .vs2 .c.no .n{color:#6b7280}
      .vs2 .s{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:32px;letter-spacing:.1em;margin-top:10px}
      .vs2 .c.no .s{color:#6b7280}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="14" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <svg class="web" viewBox="0 0 200 200" fill="none" stroke="#1e1b4b" stroke-width="2.2"><path d="M200 0L40 160M200 0L110 190M200 0L10 90M200 0L190 200M200 0L0 20"/><path d="M160 10c-10 20-6 30 8 40 14 10 22 8 28 2"/><path d="M110 18c-6 40 0 60 30 80 28 18 44 22 58 18"/><path d="M60 26c-4 60 10 96 50 124 34 24 62 34 88 30"/><path d="M14 38c4 78 24 120 70 150"/></svg>
      <svg class="bat" style="left:760px;top:1530px;width:170px;transform:rotate(-8deg)" viewBox="0 0 120 60" fill="#1e1b4b"><path d="M60 22c-4-8-10-10-10-10l3 10c-10-6-22-6-30 2 8 0 14 4 16 10 4-4 10-4 14 0-2 6 2 12 7 16 5-4 9-10 7-16 4-4 10-4 14 0 2-6 8-10 16-10-8-8-20-8-30-2l3-10s-6 2-10 10z"/></svg>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:520px" id="s1l">Salón de uñas · 29 oct</div>
        <div class="ttl abs" style="top:590px;font-size:150px" id="s1t">Jueves de <span class="kw hl">Halloween.</span></div>
        <div class="ttl abs" style="top:1000px;font-size:84px;color:#5b21b6" id="s1s">31 chats. Dos finales.</div>
      </section>

      <section id="s2" class="clip" data-start="2.6" data-duration="6" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:88px" id="s2t">Mismos <span class="kw hl">31 chats.</span></div>
        <div class="band no" style="top:560px" id="bn">
          <div class="k">SIN RESERVUM</div>
          <div class="big"><span class="n" id="nn">0</span><span class="of">de 31</span></div>
          <div class="sub">respondidos</div>
          <div class="dots" id="dn">/*DOTS_NO*/</div>
        </div>
        <div class="band si" style="top:1045px" id="bs">
          <div class="k">CON RESERVUM</div>
          <div class="big"><span class="n" id="ns">0</span><span class="of">de 31</span></div>
          <div class="sub">respondidos</div>
          <div class="dots" id="ds">/*DOTS_SI*/</div>
        </div>
      </section>

      <section id="s3" class="clip" data-start="8.6" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:110px" id="s3t">Horas <span class="kw hl">vacías.</span></div>
        <div class="vs2" style="top:640px">
          <div class="c no" id="c1"><div class="h">Sin</div><div class="n">2</div><div class="s">NADIE LAS OFRECIÓ</div></div>
          <div class="c si" id="c2"><div class="h">Con</div><div class="n">0</div><div class="s">SE OFRECIERON SOLAS</div></div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="11.2" data-duration="2.8" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:460px;font-size:150px" id="s4a">Elige tu <span class="kw hl">jueves.</span></div>
        <div class="abs bigbrand" style="top:960px" id="s4b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1130px" id="s4c"><span class="cta">reservum.cl</span></div>
      </section>

      <div class="foot" id="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="14" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      const count=(sel,to,t,d)=>{const o={v:0};tl.fromTo(o,{v:0},{v:to,duration:d,ease:"none",onUpdate:()=>{document.querySelector(sel).textContent=Math.round(o.v)}},t);};
      // S1
      tl.fromTo("#s1l",{opacity:0},{opacity:1,duration:0.2},0);
      up("#s1t",0.02,0.3);
      hl("#s1t .hl",0.35);
      up("#s1s",0.8,0.35);
      tl.fromTo(".web",{opacity:0,scale:0.8,transformOrigin:"100% 0%"},{opacity:0.16,scale:1,duration:0.6},0);
      // S2
      up("#s2t",2.62,0.3);
      hl("#s2t .hl",2.9);
      tl.fromTo("#bn",{opacity:0,x:-80},{opacity:1,x:0,duration:0.35,ease:"power3.out"},2.7);
      tl.fromTo("#dn i",{opacity:0,scale:0.4},{opacity:1,scale:1,duration:0.12,stagger:0.045},3.0);
      count("#nn",4,3.2,1.6);
      tl.fromTo("#bn",{x:0},{x:-10,duration:0.06,yoyo:true,repeat:5},4.9);
      tl.fromTo("#bs",{opacity:0,x:80},{opacity:1,x:0,duration:0.35,ease:"power3.out"},5.5);
      tl.fromTo("#ds i",{opacity:0,scale:0.4},{opacity:1,scale:1,duration:0.12,stagger:0.045,ease:"back.out(2)"},5.8);
      count("#ns",31,5.8,1.5);
      tl.fromTo("#bs",{scale:1},{scale:1.03,duration:0.15,yoyo:true,repeat:1},7.4);
      // S3
      up("#s3t",8.62,0.3);
      hl("#s3t .hl",8.9);
      tl.fromTo("#c1",{opacity:0,y:80},{opacity:1,y:0,duration:0.35,ease:"power3.out"},8.9);
      tl.fromTo("#c2",{opacity:0,y:80},{opacity:1,y:0,duration:0.35,ease:"power3.out"},9.5);
      tl.fromTo("#c2 .n",{scale:0.6,transformOrigin:"0% 50%"},{scale:1,duration:0.35,ease:"back.out(2)"},9.6);
      // S4
      up("#s4a",11.22,0.35);
      hl("#s4a .hl",11.55);
      tl.fromTo("#s4b",{opacity:0,scale:0.8,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},11.6);
      tl.fromTo("#s4c",{opacity:0,y:30},{opacity:1,y:0,duration:0.3,ease:"power3.out"},11.85);
      tl.to("#foot",{opacity:0,duration:0.2},5.3);tl.to("#foot",{opacity:1,duration:0.2},8.6);tl.to("#foot",{opacity:0,duration:0.2},11.2);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
