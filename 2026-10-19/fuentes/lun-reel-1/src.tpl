<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*BRAND*/
      .scene{position:absolute;left:80px;right:140px;top:340px;height:1160px;display:flex;flex-direction:column;justify-content:center}
      .bub{position:absolute;width:300px;height:96px;border-radius:30px 30px 30px 8px;background:#dcf8c6;box-shadow:0 8px 20px rgba(30,27,75,.08);opacity:.55}
      .bub::before,.bub::after{content:"";position:absolute;left:28px;height:14px;border-radius:7px;background:rgba(30,27,75,.18)}
      .bub::before{top:26px;width:200px}
      .bub::after{top:54px;width:130px}
      #bubs{position:absolute;inset:0;overflow:hidden}
      #count{font-size:440px;font-weight:900;letter-spacing:-0.06em;line-height:.9;color:#1e1b4b;font-variant-numeric:tabular-nums}
      .sub{font-size:84px;font-weight:800;letter-spacing:-0.04em;line-height:1.02}
      .clock{width:200px;height:200px;border-radius:50%;border:16px solid #6d28d9;position:relative;background:#fff}
      .clock .h{position:absolute;left:50%;top:50%;width:14px;height:62px;margin-left:-7px;margin-top:-62px;background:#1e1b4b;border-radius:7px;transform-origin:50% 100%}
      .clock .m{position:absolute;left:50%;top:50%;width:10px;height:78px;margin-left:-5px;margin-top:-78px;background:#6d28d9;border-radius:5px;transform-origin:50% 100%}
      .week{display:flex;gap:22px;align-items:flex-end;height:440px;margin-top:60px}
      .col{flex:1;display:flex;flex-direction:column;align-items:center;gap:18px}
      .bar{width:100%;height:400px;border-radius:22px;background:rgba(91,76,230,.12);position:relative;overflow:hidden}
      .fill{position:absolute;left:0;right:0;bottom:0;height:100%;background:linear-gradient(#7c6cf0,#5b4ce6);border-radius:22px;transform-origin:50% 100%}
      .mn{position:absolute;left:0;right:0;top:22px;text-align:center;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:28px;color:#fff}
      .day{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:34px;color:#6d28d9}
      .cta{display:inline-flex;align-items:center;gap:20px;background:#5b4ce6;color:#fff;font-weight:800;font-size:56px;padding:30px 48px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="12" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div id="bubs" data-layout-allow-overflow></div>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip scene" data-start="0" data-duration="2.9" data-track-index="1">
        <div class="lbl" id="s1l">Tu WhatsApp, un día normal</div>
        <div id="count" style="margin-top:40px">0</div>
        <div class="sub" id="s1s">mensajes al día</div>
      </section>

      <section id="s2" class="clip scene" data-start="2.9" data-duration="2.5" data-track-index="1">
        <div class="lbl" id="s2l">Cada uno te toma</div>
        <div style="display:flex;align-items:center;gap:44px;margin-top:70px" id="s2row">
          <div class="clock"><div class="h"></div><div class="m" id="hand"></div></div>
          <div class="ttl" style="font-size:230px" id="s2n">× 2</div>
        </div>
        <div class="sub" style="margin-top:40px" id="s2s">minutos cada uno</div>
      </section>

      <section id="s3" class="clip scene" data-start="5.4" data-duration="2.4" data-track-index="1">
        <div class="lbl" id="s3l">Haz la cuenta</div>
        <div class="ttl" style="font-size:300px;margin-top:40px" id="s3n"><span class="kw hl" style="background-size:100% 20%">= 80</span></div>
        <div class="ttl" style="font-size:150px;margin-top:10px" id="s3m">minutos</div>
        <div class="sub" style="margin-top:40px;color:#1e1b4b" id="s3s">al día contestando lo mismo</div>
      </section>

      <section id="s4" class="clip scene" data-start="7.8" data-duration="2.3" data-track-index="1">
        <div class="ttl" style="font-size:112px" id="s4t">Casi <span class="kw hl">7 horas</span> a la semana</div>
        <div class="week" id="week">
          <div class="col"><div class="bar"><div class="fill"></div><div class="mn">80 min</div></div><div class="day">LUN</div></div>
          <div class="col"><div class="bar"><div class="fill"></div><div class="mn">80 min</div></div><div class="day">MAR</div></div>
          <div class="col"><div class="bar"><div class="fill"></div><div class="mn">80 min</div></div><div class="day">MIÉ</div></div>
          <div class="col"><div class="bar"><div class="fill"></div><div class="mn">80 min</div></div><div class="day">JUE</div></div>
          <div class="col"><div class="bar"><div class="fill"></div><div class="mn">80 min</div></div><div class="day">VIE</div></div>
        </div>
      </section>

      <section id="s5" class="clip scene" data-start="10.1" data-duration="1.9" data-track-index="1">
        <div class="lbl" id="s5l">Recupera ese tiempo</div>
        <div class="ttl" style="font-size:132px;margin-top:40px" id="s5t">Tu WhatsApp se contesta <span class="kw hl">solo.</span></div>
        <div style="margin-top:70px" id="s5c"><span class="cta">Prueba Reservum</span></div>
      </section>

      <div class="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="12" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      // deterministic falling bubbles
      const bubs = document.getElementById("bubs");
      const pos = [[60,-300],[620,-620],[340,-900],[700,-1200],[120,-1450],[520,-1750],[260,-2050],[760,-2300],[40,-2600],[460,-2900],[680,-3150],[200,-3400]];
      pos.forEach(([x,y],i)=>{const b=document.createElement("div");b.className="bub";b.setAttribute("data-layout-allow-overflow","");b.style.left=x+"px";b.style.top=y+"px";b.id="b"+i;bubs.appendChild(b);});

      const tl = gsap.timeline({ paused: true });
      // bubbles fall during scene 1-2
      tl.fromTo("#bubs .bub",{y:0},{y:4200,duration:5.4,ease:"none"},0);
      tl.to("#bubs",{opacity:0,duration:0.4},5.0);

      // S1 count-up
      tl.fromTo("#s1l",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},0.05);
      const c={v:0};
      tl.fromTo("#count",{scale:0.8,opacity:0},{scale:1,opacity:1,duration:0.3,ease:"back.out(2)",transformOrigin:"0% 60%"},0.05);
      tl.to(c,{v:40,duration:1.9,ease:"power2.out",onUpdate:()=>{document.getElementById("count").textContent=Math.round(c.v);}},0.1);
      tl.fromTo("#s1s",{opacity:0,y:30},{opacity:1,y:0,duration:0.35},0.4);
      tl.to("#count",{scale:1.06,duration:0.15,yoyo:true,repeat:1,transformOrigin:"0% 60%"},2.0);

      // S2
      tl.fromTo("#s2l",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},2.95);
      tl.fromTo("#s2row",{x:-120,opacity:0},{x:0,opacity:1,duration:0.45,ease:"power3.out"},3.0);
      tl.fromTo("#hand",{rotation:0},{rotation:720,duration:2.2,ease:"none"},3.0);
      tl.fromTo("#s2s",{opacity:0,y:30},{opacity:1,y:0,duration:0.35},3.35);

      // S3
      tl.fromTo("#s3l",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},5.45);
      tl.fromTo("#s3n",{scale:0.6,opacity:0},{scale:1,opacity:1,duration:0.5,ease:"back.out(1.8)",transformOrigin:"0% 50%"},5.5);
      tl.fromTo("#s3n .hl",{backgroundSize:"0% 20%"},{backgroundSize:"100% 20%",duration:0.5,ease:"power2.out"},5.9);
      tl.fromTo("#s3m",{opacity:0,y:30},{opacity:1,y:0,duration:0.35},5.75);
      tl.fromTo("#s3s",{opacity:0,y:30},{opacity:1,y:0,duration:0.35},6.1);
      tl.to("#s3n",{scale:1.05,duration:1.4,ease:"sine.inOut",transformOrigin:"0% 50%"},6.2);

      // S4
      tl.fromTo("#s4t",{opacity:0,y:40},{opacity:1,y:0,duration:0.4,ease:"power3.out"},7.85);
      tl.fromTo("#s4t .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},8.2);
      tl.fromTo("#week .fill",{scaleY:0},{scaleY:1,duration:0.35,stagger:0.25,ease:"power2.out"},8.3);
      tl.fromTo("#week .mn",{opacity:0},{opacity:1,duration:0.2,stagger:0.25},8.5);

      // S5
      tl.fromTo("#s5l",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},10.15);
      tl.fromTo("#s5t",{opacity:0,y:50},{opacity:1,y:0,duration:0.45,ease:"power3.out"},10.2);
      tl.fromTo("#s5t .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},10.6);
      tl.fromTo("#s5c",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(2)",transformOrigin:"0% 50%"},10.8);

      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
