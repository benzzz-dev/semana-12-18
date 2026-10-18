<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*BRAND*/
      .abs{position:absolute;left:80px;right:140px}
      .tag{display:inline-block;font-family:"DejaVu Sans Mono",monospace;font-weight:700;letter-spacing:.16em;font-size:42px;padding:14px 28px;border-radius:14px}
      .tag.no{background:#1e1b4b;color:#fff}
      .tag.si{background:#5b4ce6;color:#fff}
      .watch{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:170px;color:#6d28d9;letter-spacing:-0.02em}
      .ring{width:520px;height:520px;border-radius:50%;border:22px solid #ddd6fe;position:relative}
      .ring svg{position:absolute;inset:-22px;width:520px;height:520px;transform:rotate(-90deg)}
      .phone{position:absolute;left:200px;top:560px;width:620px;height:880px;border-radius:72px;background:#0f0d24;padding:16px;box-shadow:0 40px 80px rgba(30,27,75,.35)}
      .screen{position:absolute;inset:16px;border-radius:58px;overflow:hidden;background:linear-gradient(180deg,#2b2466,#110e2e)}
      .notch{position:absolute;left:50%;top:14px;width:150px;height:40px;margin-left:-75px;border-radius:20px;background:#000;z-index:9}
      .ltime{position:absolute;left:0;right:0;top:70px;text-align:center;color:#fff;font-weight:700;font-size:110px;letter-spacing:-0.03em}
      .stack{position:absolute;left:22px;right:22px;top:240px;display:flex;flex-direction:column;gap:14px}
      .n{display:flex;gap:16px;align-items:flex-start;background:#fff;border-radius:28px;padding:18px 20px}
      .n .wa{width:58px;height:58px;border-radius:16px;background:#128c4a;flex:none;display:flex;align-items:center;justify-content:center;color:#fff;font-weight:900;font-size:30px}
      .n .h{display:flex;justify-content:space-between;font-size:24px;color:#444;font-weight:700;font-family:"DejaVu Sans Mono",monospace}
      .n .b{font-size:32px;font-weight:600;color:#111;margin-top:4px;line-height:1.15}
      .cnt{font-weight:900;font-size:340px;letter-spacing:-0.06em;line-height:.9}
      .card{display:flex;align-items:center;gap:26px;background:#fff;border-radius:30px;padding:26px 30px;box-shadow:0 18px 40px rgba(91,76,230,.2);border:4px solid #5b4ce6;margin-top:26px}
      .card .ck{width:84px;height:84px;border-radius:24px;background:#5b4ce6;display:flex;align-items:center;justify-content:center;flex:none}
      .card .ck svg{width:50px;height:50px}
      .card b{display:block;font-size:46px;font-weight:900;letter-spacing:-0.03em}
      .card span{font-family:"DejaVu Sans Mono",monospace;font-size:30px;color:#6d28d9;font-weight:700}
      .cta{display:inline-flex;align-items:center;background:#5b4ce6;color:#fff;font-weight:800;font-size:60px;padding:30px 52px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="13" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:420px" id="s1l">Sesión de tatuaje</div>
        <div class="ttl abs" style="top:490px;font-size:128px" id="s1t"><span class="kw hl">3 horas</span> sin mirar el celular</div>
        <div class="abs" style="top:900px;display:flex;justify-content:center;right:80px" id="s1w">
          <div class="ring"><svg viewBox="0 0 520 520"><circle id="arc" cx="260" cy="260" r="249" fill="none" stroke="#5b4ce6" stroke-width="22" stroke-linecap="round" stroke-dasharray="1565" stroke-dashoffset="1565"/></svg>
            <div style="position:absolute;inset:0;display:flex;align-items:center;justify-content:center"><div class="watch" id="watch" style="font-size:92px">0:00:00</div></div>
          </div>
        </div>
      </section>

      <section id="s2" class="clip" data-start="2.6" data-duration="2.8" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:410px;font-size:92px;white-space:nowrap" id="s2t"><span class="kw hl" id="n17">0</span> mensajes nuevos</div>
        <div class="phone" id="phone"><div class="screen">
          <div class="ltime">15:12</div>
          <div class="stack">
            <div class="n" id="p1"><div class="wa">W</div><div style="flex:1"><div class="h"><span>Cata</span><span>ahora</span></div><div class="b">¿Precio de un fine line?</div></div></div>
            <div class="n" id="p2"><div class="wa">W</div><div style="flex:1"><div class="h"><span>Diego</span><span>hace 20 min</span></div><div class="b">¿Tienes el jueves?</div></div></div>
            <div class="n" id="p3"><div class="wa">W</div><div style="flex:1"><div class="h"><span>Fran</span><span>hace 45 min</span></div><div class="b">¿Hacen covers?</div></div></div>
            <div class="n" id="p4"><div class="wa">W</div><div style="flex:1"><div class="h"><span>Nico</span><span>hace 1 h</span></div><div class="b">¿Cuánto es el abono?</div></div></div>
            <div class="n" id="p5"><div class="wa">W</div><div style="flex:1"><div class="h"><span>+13 más</span><span>hace 2 h</span></div><div class="b">Hola, ¿sigues atendiendo?</div></div></div>
          </div>
        </div><div class="notch"></div></div>
      </section>

      <section id="s3" class="clip" data-start="5.4" data-duration="2.6" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:420px"><span class="tag no" id="s3tag">SIN RESERVUM</span></div>
        <div class="ttl abs" style="top:540px;font-size:110px" id="s3t">Los contestas a las <span class="kw hl">22:00</span></div>
        <div class="abs cnt" style="top:860px;color:#6b7280" id="s3n">17</div>
        <div class="ttl abs" style="top:1220px;font-size:86px" id="s3s">y 5 ya le escribieron a otro estudio.</div>
      </section>

      <section id="s4" class="clip" data-start="8.0" data-duration="2.8" data-track-index="1" style="position:absolute;inset:0">
        <div class="abs" style="top:420px"><span class="tag si" id="s4tag">CON RESERVUM</span></div>
        <div class="ttl abs" style="top:540px;font-size:110px" id="s4t">Cada mensaje, <span class="kw hl">resuelto</span></div>
        <div class="abs" style="top:830px">
          <div class="card" id="c1"><div class="ck">/*CHECK*/</div><div><b>Cotización base enviada</b><span>FINE LINE · DESDE $45.000</span></div></div>
          <div class="card" id="c2"><div class="ck">/*CHECK*/</div><div><b>Sesión agendada</b><span>JUE 22 · 17:00</span></div></div>
          <div class="card" id="c3"><div class="ck">/*CHECK*/</div><div><b>Abono pedido</b><span>LINK DE PAGO ENVIADO</span></div></div>
        </div>
      </section>

      <section id="s5" class="clip" data-start="10.8" data-duration="2.2" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:520px;font-size:150px" id="s5a">Tú tatúas.</div>
        <div class="ttl abs" style="top:720px;font-size:120px" id="s5b">Tu agenda se llena <span class="kw hl">sola.</span></div>
        <div class="abs" style="top:1120px" id="s5c"><span class="cta">Prueba Reservum</span></div>
      </section>

      <div class="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="13" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const fmt=s=>{s=Math.round(s);const h=Math.floor(s/3600),m=Math.floor(s%3600/60),x=s%60;return h+":"+String(m).padStart(2,"0")+":"+String(x).padStart(2,"0");};
      const w={v:0};
      tl.fromTo("#s1l",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},0);
      tl.fromTo("#s1t",{opacity:0,y:50},{opacity:1,y:0,duration:0.4,ease:"power3.out"},0.05);
      tl.fromTo("#s1t .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},0.4);
      tl.fromTo("#s1w",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(1.8)"},0.2);
      tl.fromTo(w,{v:0},{v:10800,duration:1.9,ease:"power2.in",onUpdate:()=>{document.getElementById("watch").textContent=fmt(w.v);}},0.35);
      tl.fromTo("#arc",{attr:{"stroke-dashoffset":1565}},{attr:{"stroke-dashoffset":0},duration:1.9,ease:"power2.in"},0.35);
      tl.to("#s1w",{scale:1.06,duration:0.12,yoyo:true,repeat:1},2.25);
      // S2
      const c={v:0};
      tl.fromTo("#s2t",{opacity:0,y:40},{opacity:1,y:0,duration:0.35,ease:"power3.out"},2.6);
      tl.fromTo("#phone",{opacity:0,y:120},{opacity:1,y:0,duration:0.45,ease:"power3.out"},2.65);
      ["#p5","#p4","#p3","#p2","#p1"].forEach((id,i)=>{
        tl.fromTo(id,{opacity:0,y:-60,scale:0.9},{opacity:1,y:0,scale:1,duration:0.28,ease:"back.out(2)"},3.0+i*0.3);
      });
      tl.fromTo(c,{v:0},{v:17,duration:1.5,ease:"none",onUpdate:()=>{document.getElementById("n17").textContent=Math.round(c.v);}},3.0);
      tl.fromTo("#s2t .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},4.5);
      // S3
      const d={v:17};
      tl.fromTo("#s3tag",{opacity:0,scale:0.7},{opacity:1,scale:1,duration:0.3,ease:"back.out(2)",transformOrigin:"0% 50%"},5.45);
      tl.fromTo("#s3t",{opacity:0,y:40},{opacity:1,y:0,duration:0.4,ease:"power3.out"},5.55);
      tl.fromTo("#s3t .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},5.9);
      tl.fromTo("#s3n",{opacity:0,scale:0.7},{opacity:1,scale:1,duration:0.4,ease:"back.out(1.6)",transformOrigin:"0% 50%"},5.8);
      tl.fromTo(d,{v:17},{v:12,duration:0.9,ease:"power1.inOut",onUpdate:()=>{document.getElementById("s3n").textContent=Math.round(d.v);}},6.4);
      tl.fromTo("#s3s",{opacity:0,y:30},{opacity:1,y:0,duration:0.35},6.9);
      // S4
      tl.fromTo("#s4tag",{opacity:0,scale:0.7},{opacity:1,scale:1,duration:0.3,ease:"back.out(2)",transformOrigin:"0% 50%"},8.05);
      tl.fromTo("#s4t",{opacity:0,y:40},{opacity:1,y:0,duration:0.4,ease:"power3.out"},8.15);
      tl.fromTo("#s4t .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},8.5);
      ["#c1","#c2","#c3"].forEach((id,i)=>{
        tl.fromTo(id,{opacity:0,x:-60,scale:0.92},{opacity:1,x:0,scale:1,duration:0.35,ease:"back.out(1.8)"},8.6+i*0.5);
      });
      // S5
      tl.fromTo("#s5a",{opacity:0,y:50},{opacity:1,y:0,duration:0.4,ease:"power3.out"},10.85);
      tl.fromTo("#s5b",{opacity:0,y:50},{opacity:1,y:0,duration:0.4,ease:"power3.out"},11.1);
      tl.fromTo("#s5b .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},11.45);
      tl.fromTo("#s5c",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(2)",transformOrigin:"0% 50%"},11.5);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
