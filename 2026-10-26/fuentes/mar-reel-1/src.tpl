<!doctype html>
<html lang="es">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=1080, height=1920" />
    <script src="gsap.min.js"></script>
    <style>
/*BRAND*/
      .abs{position:absolute;left:80px;right:140px}
      .giant{font-weight:900;letter-spacing:-0.06em;line-height:.85;color:#5b21b6}
      .op{font-weight:900;letter-spacing:-0.05em;color:#6d28d9}
      .chips{display:flex;gap:18px;flex-wrap:wrap}
      .chip{background:rgba(255,255,255,.85);border-radius:999px;padding:16px 30px;font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:34px;color:#1e1b4b;box-shadow:0 10px 24px rgba(30,27,75,.1)}
      .chip.x{background:#1e1b4b;color:#fff}
      .cal{background:rgba(255,255,255,.82);border-radius:40px;padding:30px;box-shadow:0 20px 50px rgba(30,27,75,.12)}
      .cal h4{font-family:"DejaVu Sans Mono",monospace;font-weight:700;color:#6d28d9;letter-spacing:.14em;font-size:32px;margin-bottom:18px}
      .cg{display:grid;grid-template-columns:repeat(7,1fr);gap:12px}
      .cg .wd{font-family:"DejaVu Sans Mono",monospace;font-weight:700;font-size:28px;color:#6b7280;text-align:center}
      .cg .c{height:86px;border-radius:18px;background:#ede9fe;display:flex;align-items:center;justify-content:center;font-weight:800;font-size:32px;color:#4c1d95;position:relative}
      .cg .c.e{background:#fff;outline:4px dashed #ef4444;color:#ef4444}
      .cg .c.e::after{content:"✕";position:absolute;font-size:56px;font-weight:900;color:#ef4444;opacity:.9}
      .cg .c.e span{opacity:0}
      .cg .c.v{background:transparent}
      .tot{font-weight:900;letter-spacing:-0.055em;font-size:200px;line-height:.95;color:#5b21b6}
      .notif{display:flex;gap:22px;align-items:center;background:#fff;border-radius:34px;padding:26px 30px;box-shadow:0 18px 40px rgba(30,27,75,.15)}
      .notif .ic{width:80px;height:80px;border-radius:22px;background:#5b4ce6;flex:none;display:flex;align-items:center;justify-content:center}
      .notif .ic svg{width:48px;height:48px}
      .notif .h{font-family:"DejaVu Sans Mono",monospace;font-size:28px;color:#6b7280;font-weight:700}
      .notif .b{font-size:42px;font-weight:800;color:#111;line-height:1.15;margin-top:4px}
      .reply{align-self:flex-end;background:#d9fdd3;border-radius:30px 30px 8px 30px;padding:20px 30px;font-size:46px;font-weight:800;color:#111;box-shadow:0 10px 24px rgba(30,27,75,.1)}
      .reply small{font-size:28px;color:#1d6f9a;margin-left:10px}
      .cta{display:inline-flex;align-items:center;background:#5b4ce6;color:#fff;font-weight:800;font-size:58px;padding:28px 50px;border-radius:999px;box-shadow:0 18px 40px rgba(91,76,230,.35)}
      .bigbrand{display:flex;align-items:center;gap:26px}
      .bigbrand .ico{width:110px;height:110px;border-radius:30px;background:#5b4ce6;display:flex;align-items:center;justify-content:center;box-shadow:0 16px 34px rgba(91,76,230,.35)}
      .bigbrand .ico svg{width:66px;height:66px}
      .bigbrand .wm{font-weight:900;font-size:100px;letter-spacing:-0.04em}
      .bigbrand .wm i{font-style:normal;color:#5b4ce6}
    </style>
  </head>
  <body>
    <div id="root" data-composition-id="main" data-start="0" data-duration="13" data-width="1080" data-height="1920">
      <div class="bg"></div>
      <div class="brand"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>

      <section id="s1" class="clip" data-start="0" data-duration="2.3" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:420px" id="s1l">Barbería · haz la cuenta</div>
        <div class="abs giant" style="top:480px;font-size:620px" id="s1n">2</div>
        <div class="ttl abs" style="top:1040px;font-size:118px" id="s1t">inasistencias <span class="kw hl">a la semana</span></div>
      </section>

      <section id="s2" class="clip" data-start="2.3" data-duration="2.2" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:420px" id="s2l">Cada silla vacía cuesta</div>
        <div class="abs op" style="top:500px;font-size:300px;line-height:.9" id="s2x">×</div>
        <div class="ttl abs" style="top:800px;font-size:190px;color:#5b21b6" id="s2n">$12.000</div>
        <div class="ttl abs" style="top:1020px;font-size:110px" id="s2t">el <span class="kw hl">corte</span></div>
      </section>

      <section id="s3" class="clip" data-start="4.5" data-duration="2.3" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:150px" id="s3t"><span class="op">×</span> 4 <span class="kw hl">semanas</span></div>
        <div class="abs cal" style="top:680px" id="cal">
          <h4>NOVIEMBRE · 8 SILLAS VACÍAS</h4>
          <div class="cg" id="cg">
            <div class="wd">L</div><div class="wd">M</div><div class="wd">M</div><div class="wd">J</div><div class="wd">V</div><div class="wd">S</div><div class="wd">D</div>
            <div class="c v"></div><div class="c v"></div><div class="c v"></div><div class="c v"></div><div class="c v"></div><div class="c v"></div><div class="c"><span>1</span></div>
            <div class="c"><span>2</span></div><div class="c e"><span>3</span></div><div class="c"><span>4</span></div><div class="c"><span>5</span></div><div class="c e"><span>6</span></div><div class="c"><span>7</span></div><div class="c"><span>8</span></div>
            <div class="c e"><span>9</span></div><div class="c"><span>10</span></div><div class="c"><span>11</span></div><div class="c e"><span>12</span></div><div class="c"><span>13</span></div><div class="c"><span>14</span></div><div class="c"><span>15</span></div>
            <div class="c"><span>16</span></div><div class="c"><span>17</span></div><div class="c e"><span>18</span></div><div class="c"><span>19</span></div><div class="c"><span>20</span></div><div class="c e"><span>21</span></div><div class="c"><span>22</span></div>
            <div class="c"><span>23</span></div><div class="c e"><span>24</span></div><div class="c"><span>25</span></div><div class="c"><span>26</span></div><div class="c e"><span>27</span></div><div class="c"><span>28</span></div><div class="c"><span>29</span></div>
          </div>
        </div>
      </section>

      <section id="s4" class="clip" data-start="6.8" data-duration="2.3" data-track-index="1" style="position:absolute;inset:0">
        <div class="lbl abs" style="top:420px" id="s4l">Lo que se va en sillas vacías</div>
        <div class="abs op" style="top:480px;font-size:220px;line-height:1" id="s4e">=</div>
        <div class="abs tot" style="top:720px" id="tot">$0</div>
        <div class="ttl abs" style="top:940px;font-size:120px" id="s4t">al <span class="kw hl">mes.</span></div>
      </section>

      <section id="s5" class="clip" data-start="9.1" data-duration="3.9" data-track-index="1" style="position:absolute;inset:0">
        <div class="ttl abs" style="top:400px;font-size:92px" id="s5a">Un recordatorio <span class="kw hl" style="white-space:nowrap">24 h antes</span> cambia esa cuenta.</div>
        <div class="abs" style="top:760px;display:flex;flex-direction:column;gap:24px" id="s5n">
          <div class="notif" id="nt"><div class="ic">/*CHECK*/</div><div><div class="h">Reservum · mañana 10:00</div><div class="b">Te esperamos para tu corte. ¿Confirmas?</div></div></div>
          <div class="reply" id="rp">Confirmo <small>✓✓</small></div>
        </div>
        <div class="abs bigbrand" style="top:1140px" id="s5b"><div class="ico">/*CHECK*/</div><div class="wm">Reservum<i>.</i></div></div>
        <div class="abs" style="top:1300px" id="s5c"><span class="cta">reservum.cl</span></div>
      </section>

      <div class="foot" id="foot">reservum.cl</div>
      <audio id="bed" src="audio.wav" data-start="0" data-duration="13" data-track-index="5" data-volume="0.9"></audio>
    </div>
    <script>
      const tl = gsap.timeline({ paused: true });
      const hl=(s,t)=>tl.fromTo(s,{backgroundSize:"0% 30%"},{backgroundSize:"100% 30%",duration:0.4},t);
      const up=(s,t,d=0.4)=>tl.fromTo(s,{opacity:0,y:50},{opacity:1,y:0,duration:d,ease:"power3.out"},t);
      const fmt=v=>"$"+Math.round(v).toString().replace(/\B(?=(\d{3})+(?!\d))/g,".");
      // S1
      tl.fromTo("#s1l",{opacity:0},{opacity:1,duration:0.25},0);
      tl.fromTo("#s1n",{opacity:0,scale:0.3,y:-200,transformOrigin:"20% 80%"},{opacity:1,scale:1,y:0,duration:0.55,ease:"bounce.out"},0.02);
      up("#s1t",0.35,0.35);
      hl("#s1t .hl",0.7);
      tl.to("#s1n",{rotation:-6,duration:0.12,yoyo:true,repeat:3,transformOrigin:"50% 90%"},1.3);
      // S2
      tl.fromTo("#s2l",{opacity:0},{opacity:1,duration:0.25},2.3);
      tl.fromTo("#s2x",{opacity:0,scale:0.4,rotation:-90},{opacity:1,scale:1,rotation:0,duration:0.4,ease:"back.out(2)"},2.32);
      tl.fromTo("#s2n",{opacity:0,x:-120},{opacity:1,x:0,duration:0.4,ease:"power3.out"},2.55);
      up("#s2t",2.85,0.35);
      hl("#s2t .hl",3.1);
      // S3
      up("#s3t",4.52,0.35);
      hl("#s3t .hl",4.8);
      tl.fromTo("#cal",{opacity:0,y:80},{opacity:1,y:0,duration:0.4,ease:"power3.out"},4.6);
      tl.fromTo("#cg .c.e",{scale:0.4,opacity:0},{scale:1,opacity:1,duration:0.18,stagger:0.12,ease:"back.out(3)"},5.0);
      // S4
      tl.fromTo("#s4l",{opacity:0},{opacity:1,duration:0.25},6.8);
      tl.fromTo("#s4e",{opacity:0,scaleX:0,transformOrigin:"0% 50%"},{opacity:1,scaleX:1,duration:0.3,ease:"power3.out"},6.82);
      tl.fromTo("#tot",{opacity:0},{opacity:1,duration:0.15},6.95);
      const c={v:0};tl.fromTo(c,{v:0},{v:96000,duration:1.0,ease:"power2.out",onUpdate:()=>{document.getElementById("tot").textContent=fmt(c.v);}},7.0);
      tl.fromTo("#tot",{scale:1},{scale:1.08,duration:0.12,yoyo:true,repeat:1,transformOrigin:"0% 50%"},8.0);
      up("#s4t",7.4,0.35);
      hl("#s4t .hl",7.7);
      // S5
      up("#s5a",9.12,0.35);
      hl("#s5a .hl",9.45);
      tl.fromTo("#nt",{opacity:0,y:-60,scale:0.9},{opacity:1,y:0,scale:1,duration:0.35,ease:"back.out(2)"},9.5);
      tl.fromTo("#rp",{opacity:0,x:80},{opacity:1,x:0,duration:0.3,ease:"back.out(2)"},10.0);
      tl.fromTo("#s5b",{opacity:0,scale:0.8,transformOrigin:"0% 50%"},{opacity:1,scale:1,duration:0.35,ease:"back.out(2)"},10.35);
      tl.fromTo("#s5c",{opacity:0,y:30},{opacity:1,y:0,duration:0.3,ease:"power3.out"},10.55);
      tl.to("#foot",{opacity:0,duration:0.2},9.1);
      window.__timelines["main"] = tl;
    </script>
  </body>
</html>
