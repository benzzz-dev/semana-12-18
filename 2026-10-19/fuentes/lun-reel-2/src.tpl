<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*BRAND*/
      #night{position:absolute;inset:0;background:linear-gradient(170deg,#1e1b4b 0%,#2a2470 60%,#3b2a6b 100%);opacity:1}
      .cap{position:absolute;left:80px;right:140px;top:340px;height:250px;display:flex;flex-direction:column;justify-content:flex-end}
      .cap .ttl{font-size:96px}
      .cap .lbl{margin-bottom:18px}
      .phone{position:absolute;left:190px;top:630px;width:640px;height:910px;border-radius:72px;background:#0f0d24;padding:16px;box-shadow:0 40px 80px rgba(30,27,75,.35)}
      .screen{position:absolute;inset:16px;border-radius:58px;overflow:hidden;background:#000}
      .notch{position:absolute;left:50%;top:14px;width:150px;height:40px;margin-left:-75px;border-radius:20px;background:#000;z-index:9}
      .lock{position:absolute;inset:0;background:linear-gradient(180deg,#2b2466,#110e2e);display:flex;flex-direction:column;align-items:center;padding-top:110px;color:#fff}
      .lock .date{font-size:30px;font-weight:600;opacity:.8}
      .lock .time{font-size:170px;font-weight:700;letter-spacing:-0.04em;line-height:1;font-variant-numeric:tabular-nums}
      .notif{position:absolute;left:18px;right:18px;top:360px;background:rgba(255,255,255,.92);border-radius:28px;padding:20px 22px;display:flex;gap:16px;color:#111}
      .wa{width:52px;height:52px;border-radius:14px;background:#25d366;flex:none;display:flex;align-items:center;justify-content:center}
      .wa div{width:28px;height:28px;border-radius:50%;border:4px solid #fff}
      .notif b{font-size:28px;display:block}
      .notif span{font-size:30px;line-height:1.25;display:block;margin-top:4px}
      .notif small{position:absolute;right:22px;top:20px;font-size:22px;color:#444}
      .moon{position:absolute;left:260px;top:640px;width:90px;height:90px;border-radius:50%;box-shadow:-22px 10px 0 0 #f6e6a8;opacity:0}
      .zz{position:absolute;left:370px;top:600px;color:#c4b5fd;font-weight:900;font-size:56px;opacity:0;font-family:"Inter"}
      .chat{position:absolute;inset:0;background:#efe7de;opacity:0}
      .chat .top{height:120px;background:#f6f6f6;display:flex;align-items:flex-end;gap:14px;padding:0 22px 16px;border-bottom:1px solid #ddd}
      .av{width:56px;height:56px;border-radius:50%;background:#f6c4dc;display:flex;align-items:center;justify-content:center;font-weight:800;font-size:26px;color:#7a2953}
      .chat .top b{font-size:30px;color:#111;display:block}
      .chat .top small{font-size:22px;color:#333}
      .msgs{position:absolute;left:0;right:0;top:140px;padding:0 18px;display:flex;flex-direction:column;gap:14px}
      .m{max-width:88%;padding:14px 18px 12px;border-radius:20px;font-size:31px;line-height:1.3;color:#111;position:relative}
      .m.in{background:#fff;align-self:flex-start;border-top-left-radius:6px}
      .m.out{background:#d9fdd3;align-self:flex-end;border-top-right-radius:6px}
      .m .t{display:block;text-align:right;font-size:19px;color:#555;margin-top:4px}
      .m .bot{display:block;font-family:"DejaVu Sans Mono",monospace;font-size:18px;color:#6d28d9;font-weight:700;letter-spacing:.06em;margin-bottom:6px}
      .btns{display:flex;gap:10px;margin-top:12px}
      .btns > div{position:relative;flex:1;text-align:center;background:#fff;border-radius:14px;padding:12px 0;font-weight:700;color:#5b4ce6;font-size:30px}
      .conf{background:#fff;border-radius:22px;padding:18px 20px;display:flex;gap:16px;align-items:center;box-shadow:0 10px 24px rgba(91,76,230,.25);border:3px solid #5b4ce6;margin-top:6px}
      .conf .ck{width:56px;height:56px;border-radius:16px;background:#5b4ce6;flex:none;display:flex;align-items:center;justify-content:center}
      .conf .ck svg{width:34px;height:34px}
      .conf b{font-size:30px;color:#1e1b4b;display:block}
      .conf span{font-size:25px;color:#333}
      .tap{position:absolute;width:76px;height:76px;left:50%;top:50%;margin:-38px 0 0 -38px;border-radius:50%;background:rgba(255,255,255,.35);border:4px solid #1e1b4b;opacity:0;z-index:8}
      #end{position:absolute;left:80px;right:140px;top:340px;height:1160px;display:flex;flex-direction:column;justify-content:center}
      .cta{display:inline-flex;align-items:center;gap:20px;background:#5b4ce6;color:#fff;font-weight:800;font-size:56px;padding:30px 48px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="14" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div id="night"></div>
      <div class="brand" id="brand"><div class="ico">/*CHECK*/</div><div class="wm" id="wm" style="color:#ffffff">Reservum<i id="dot" style="color:#a78bfa">.</i></div></div>

      <div class="cap" id="c1"><div class="lbl" style="color:#c4b5fd">Lunes · casi medianoche</div><div class="ttl" id="c1t" style="color:#fff">Te escriben a las <span class="kw hl" style="color:#c4b5fd;background-image:linear-gradient(rgba(196,181,253,.35),rgba(196,181,253,.35))">23:47</span></div></div>
      <div class="cap" id="c2" style="opacity:0"><div class="lbl" style="color:#c4b5fd">Y tú</div><div class="ttl" style="color:#fff">Durmiendo.</div></div>
      <div class="cap" id="c3" style="opacity:0"><div class="lbl">Mientras tanto</div><div class="ttl">Reservum <span class="kw hl">contesta</span></div></div>
      <div class="cap" id="c4" style="opacity:0"><div class="lbl">Un toque y listo</div><div class="ttl">Hora <span class="kw hl">agendada</span></div></div>

      <div class="phone" id="phone">
        <div class="screen">
          <div class="lock" id="lock">
            <div class="date" id="ldate">lunes 19 de octubre</div>
            <div class="time" id="ltime">23:47</div>
            <div class="notif" id="notif"><div class="wa"><div></div></div><div><b>Camila</b><span>Hola! tienes hora mañana para uñas?</span></div><small>ahora</small></div>
          </div>
          <div class="moon" id="moon"></div>
          <div class="zz" id="zz">z z</div>
          <div class="chat" id="chat">
            <div class="top"><div class="av">C</div><div><b>Camila</b><small>en línea</small></div></div>
            <div class="msgs">
              <div class="m in" id="m1">Hola! tienes hora mañana para uñas?<span class="t">23:47</span></div>
              <div class="m out" id="m2"><span class="bot">RESERVUM · AUTOMÁTICO</span>Sí. Tengo 11:00 o 15:30. ¿Cuál te acomoda?<div class="btns"><div id="b11">11:00<div class="tap" id="tap"></div></div><div>15:30</div></div><span class="t">23:47 ✓✓</span></div>
              <div class="m in" id="m3">11:00<span class="t">23:48</span></div>
              <div class="conf" id="conf"><div class="ck">/*CHECK*/</div><div><b>Hora agendada</b><span>Mar 20 oct · 11:00 · Uñas</span></div></div>
            </div>
          </div>
          <div class="notch"></div>
        </div>
      </div>

      <section id="endsc" class="clip" data-start="11" data-duration="3" data-track-index="1" style="position:absolute;inset:0">
        <div id="end">
          <div class="ttl" style="font-size:250px" id="e1"><span class="kw hl">23:48.</span></div>
          <div class="ttl" style="font-size:130px;margin-top:20px" id="e2">Agenda lista.</div>
          <div class="sub" style="font-size:64px;font-weight:700;margin-top:34px;letter-spacing:-0.03em" id="e3">Y tú, durmiendo.</div>
          <div style="margin-top:60px" id="e4"><span class="cta">Prueba Reservum</span></div>
        </div>
      </section>

      <div class="foot" id="foot" style="opacity:0">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="14" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      // S1 night lock screen
                        tl.fromTo("#c1",{opacity:0,y:30},{opacity:1,y:0,duration:0.35},0.05);
      tl.fromTo("#phone",{y:120,opacity:0},{y:0,opacity:1,duration:0.6,ease:"power3.out"},0.05);
      tl.fromTo("#notif",{y:-80,opacity:0,scale:0.9},{y:0,opacity:1,scale:1,duration:0.4,ease:"back.out(2)"},0.7);
      // S2 sleeping
      tl.to("#c1",{opacity:0,duration:0.25},2.6);
      tl.fromTo("#c2",{opacity:0,y:30},{opacity:1,y:0,duration:0.35},2.8);
      tl.fromTo(["#ldate","#ltime","#notif"],{opacity:1},{opacity:0.6,duration:0.5},2.8);
      tl.fromTo("#moon",{opacity:0,scale:0.6},{opacity:1,scale:1,duration:0.5,ease:"back.out(2)"},3.0);
      tl.fromTo("#zz",{opacity:0,y:20},{opacity:1,y:-30,duration:1.6,ease:"sine.out"},3.2);
      // S3 Reservum replies (day palette back)
      tl.to("#c2",{opacity:0,duration:0.25},5.0);
      tl.to("#night",{opacity:0,duration:0.5},5.1);
      tl.to("#wm",{color:"#1e1b4b",duration:0.5},5.1);
      tl.to("#dot",{color:"#5b4ce6",duration:0.5},5.1);
      tl.to("#foot",{opacity:0.7,duration:0.3},11.0);
      tl.to(["#moon","#zz"],{opacity:0,duration:0.3},5.1);
      tl.to("#chat",{opacity:1,duration:0.4},5.2);
      tl.to(["#ldate","#ltime","#notif"],{opacity:0,duration:0.3},5.3);
      tl.fromTo("#c3",{opacity:0,y:30},{opacity:1,y:0,duration:0.35},5.3);
      tl.fromTo("#c3 .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},5.6);
      tl.fromTo("#m1",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},5.4);
      tl.fromTo("#m2",{opacity:0,y:30,scale:0.95},{opacity:1,y:0,scale:1,duration:0.4,ease:"back.out(1.6)",transformOrigin:"100% 0%"},6.2);
      // S4 tap 11:00 + confirmation
      tl.to("#c3",{opacity:0,duration:0.25},8.0);
      tl.fromTo("#c4",{opacity:0,y:30},{opacity:1,y:0,duration:0.35},8.2);
      tl.fromTo("#c4 .hl",{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},8.5);
      tl.fromTo("#tap",{opacity:0,scale:1.6},{opacity:1,scale:1,duration:0.3},8.3);
      tl.to("#b11",{backgroundColor:"#5b4ce6",color:"#ffffff",duration:0.15},8.6);
      tl.to("#tap",{opacity:0,duration:0.25},8.8);
      tl.fromTo("#m3",{opacity:0,y:20},{opacity:1,y:0,duration:0.3},8.9);
      tl.fromTo("#conf",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.45,ease:"back.out(2)",transformOrigin:"50% 50%"},9.5);
      // S5 end card
      tl.to(["#c4","#phone"],{opacity:0,duration:0.3},10.8);
      tl.fromTo("#e1",{opacity:0,scale:0.7},{opacity:1,scale:1,duration:0.45,ease:"back.out(1.8)",transformOrigin:"0% 50%"},11.05);
      tl.fromTo("#e1 .hl",{backgroundSize:"0% 25%"},{backgroundSize:"100% 25%",duration:0.4},11.4);
      tl.fromTo("#e2",{opacity:0,y:40},{opacity:1,y:0,duration:0.4},11.35);
      tl.fromTo("#e3",{opacity:0,y:30},{opacity:1,y:0,duration:0.35},11.7);
      tl.fromTo("#e4",{opacity:0,scale:0.8},{opacity:1,scale:1,duration:0.4,ease:"back.out(2)",transformOrigin:"0% 50%"},12.0);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
