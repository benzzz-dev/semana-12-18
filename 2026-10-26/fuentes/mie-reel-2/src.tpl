<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*COMMON*/
      .crew{display:flex;gap:28px}
      .crew .p{flex:1;background:#fff;border-radius:36px;padding:30px 10px 26px;box-shadow:0 20px 50px rgba(30,27,75,.12);text-align:center}
      .crew .p svg{width:170px;height:170px}
      .crew .p b{display:block;font-size:54px;font-weight:900;letter-spacing:-0.03em;margin-top:10px}
      .cols{display:flex;gap:20px}
      .col{flex:1;background:rgba(255,255,255,.75);border-radius:30px;padding:20px 16px;box-shadow:0 16px 40px rgba(30,27,75,.10);border:5px solid transparent}
      .col h4{font-size:46px;font-weight:900;text-align:center;letter-spacing:-0.03em;margin-bottom:14px}
      .col .r{height:96px;border-radius:18px;margin-top:12px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:28px;display:flex;align-items:center;padding-left:16px}
      .col .bz{background:#d1d5db;color:#4b5563}
      .col .fr{background:#fff;border:3px dashed #a78bfa;color:#6d28d9}
      .col .nw{background:#5b4ce6;color:#fff;border:0}
      .col.on{border-color:#5b4ce6;background:#fff}
      .comb{position:absolute;opacity:.10}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="13.5" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <svg class="comb" style="left:830px;top:1580px;width:150px;transform:rotate(-20deg)" viewBox="0 0 100 40" fill="#1e1b4b"><rect x="0" y="0" width="100" height="12" rx="4"/><g><rect x="4" y="10" width="4" height="26"/><rect x="14" y="10" width="4" height="26"/><rect x="24" y="10" width="4" height="26"/><rect x="34" y="10" width="4" height="26"/><rect x="44" y="10" width="4" height="26"/><rect x="54" y="10" width="4" height="26"/><rect x="64" y="10" width="4" height="26"/><rect x="74" y="10" width="4" height="26"/><rect x="84" y="10" width="4" height="26"/><rect x="94" y="10" width="4" height="26"/></g></svg>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s1l">Barbería</div>
        <div class="ttl abs" style="top:460px;font-size:136px" id="s1t">3 barberos. <span class="kw hl">1 WhatsApp.</span></div>
        <div class="abs crew" style="top:900px" id="crew">
          <div class="p"><svg viewBox="0 0 100 100"><circle cx="50" cy="36" r="20" fill="#1e1b4b"/><path d="M14 96c2-24 18-34 36-34s34 10 36 34z" fill="#1e1b4b"/><path d="M30 30c4-14 36-14 40 0-10-6-30-6-40 0z" fill="#5b4ce6"/></svg><b>Seba</b></div>
          <div class="p"><svg viewBox="0 0 100 100"><circle cx="50" cy="36" r="20" fill="#1e1b4b"/><path d="M14 96c2-24 18-34 36-34s34 10 36 34z" fill="#1e1b4b"/><path d="M36 50c4 8 24 8 28 0v6c-6 10-22 10-28 0z" fill="#5b4ce6"/></svg><b>Nico</b></div>
          <div class="p"><svg viewBox="0 0 100 100"><circle cx="50" cy="36" r="20" fill="#1e1b4b"/><path d="M14 96c2-24 18-34 36-34s34 10 36 34z" fill="#1e1b4b"/><rect x="28" y="14" width="44" height="12" rx="6" fill="#5b4ce6"/></svg><b>Tomi</b></div>
        </div>
      </section>

      <section id="s2" class="clip" data-start="2.6" data-duration="2.4" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:400px" id="s2l">Llega un mensaje</div>
        <div class="abs chat" style="top:470px" id="ch2">
          <div class="top"><div class="a">/*CHECK*/</div><div><b>Barbería La Esquina</b><span>en línea</span></div></div>
          <div class="msg in" id="m2" style="font-size:66px;font-weight:900;letter-spacing:-0.03em">“Quiero con el Nico, el viernes”<small>13:41</small></div>
        </div>
      </section>

      <section id="s3" class="clip" data-start="5" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:96px" id="s3t">Reservum mira solo la <span class="kw hl">agenda del Nico.</span></div>
        <div class="abs cols" style="top:760px" id="cols3">
          <div class="col" id="c1"><h4>Seba</h4><div class="r bz">18:30</div><div class="r bz">19:15</div><div class="r bz">20:00</div></div>
          <div class="col" id="c2"><h4>Nico</h4><div class="r fr">18:30</div><div class="r fr">19:15</div><div class="r bz">20:00</div></div>
          <div class="col" id="c3"><h4>Tomi</h4><div class="r bz">18:30</div><div class="r fr">19:15</div><div class="r bz">20:00</div></div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="7.6" data-duration="2.9" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs chat" style="top:400px" id="ch4">
          <div class="msg out" id="m4">Nico tiene libre: ¿vie 18:30 o 19:15?<small>13:41 ✓✓</small></div>
          <div class="chips"><div class="chip f" id="ck">Vie 18:30</div><div class="chip">Vie 19:15</div></div>
        </div>
        <div class="ttl abs" style="top:880px;font-size:110px" id="s4t">Agendado <span class="kw hl">✓</span></div>
        <div class="abs cols" style="top:1050px" id="cols4">
          <div class="col" style="opacity:.4"><h4>Seba</h4><div class="r bz">18:30</div></div>
          <div class="col on"><h4>Nico</h4><div class="r nw" id="nb">18:30 ✓</div></div>
          <div class="col" style="opacity:.4"><h4>Tomi</h4><div class="r bz">18:30</div></div>
        </div>
      </section>

      <section id="s5" class="clip" data-start="10.5" data-duration="3" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:116px" id="s5a">Cada barbero, su agenda. <span class="kw hl">Un solo número.</span></div>
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
      tl.fromTo("#s1l",{opacity:0},{opacity:1,duration:0.2},0);
      up("#s1t",0.02,0.3);
      hl("#s1t .hl",0.35);
      tl.fromTo("#crew .p",{opacity:0,y:80,scale:0.8},{opacity:1,y:0,scale:1,duration:0.35,stagger:0.15,ease:"back.out(2)"},0.4);
      // S2
      tl.fromTo("#s2l",{opacity:0},{opacity:1,duration:0.2},2.6);
      tl.fromTo("#ch2",{opacity:0,y:80},{opacity:1,y:0,duration:0.35,ease:"power3.out"},2.6);
      pop("#m2",2.9);
      // S3
      up("#s3t",5.02,0.35);
      hl("#s3t .hl",5.35);
      tl.fromTo("#cols3 .col",{opacity:0,y:60},{opacity:1,y:0,duration:0.3,stagger:0.08,ease:"power3.out"},5.2);
      tl.to(["#c1","#c3"],{opacity:0.3,duration:0.3},6.2);
      tl.to("#c2",{borderColor:"#5b4ce6",backgroundColor:"#ffffff",scale:1.06,duration:0.3,ease:"back.out(2)"},6.2);
      // S4
      tl.fromTo("#ch4",{opacity:0},{opacity:1,duration:0.2},7.6);
      pop("#m4",7.7,"100% 100%");
      tl.fromTo("#ch4 .chip",{opacity:0,y:30},{opacity:1,y:0,duration:0.25,stagger:0.1},8.1);
      tl.fromTo("#ck",{scale:1},{scale:1.12,duration:0.15,yoyo:true,repeat:1},8.5);
      up("#s4t",8.7,0.3);
      hl("#s4t .hl",8.9);
      tl.fromTo("#cols4",{opacity:0},{opacity:1,duration:0.2},8.7);
      tl.fromTo("#nb",{opacity:0,y:-160},{opacity:1,y:0,duration:0.45,ease:"bounce.out"},8.9);
      // S5
      up("#s5a",10.52,0.3);
      hl("#s5a .hl",10.8);
      tl.fromTo("#s5b",{opacity:0,scale:0.8,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.3,ease:"back.out(2)"},10.8);
      tl.fromTo("#s5c",{opacity:0,y:30},{opacity:1,y:0,duration:0.3,ease:"power3.out"},11.0);
      tl.to("#foot",{opacity:0,duration:0.2},10.5);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
