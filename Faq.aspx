<%@ Page Language="C#" Title="Forge Launcher — FAQ" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Forge Launcher — FAQ</title>
  <style>
    body { background: #14100d; color: #f3e9df; font: 15px/1.6 "Segoe UI", system-ui, sans-serif; margin: 0; padding: 40px 20px; }
    .wrap { max-width: 780px; margin: 0 auto; }
    h1 { color: #ff7a3c; letter-spacing: .5px; }
    h2 { color: #ffb454; margin-top: 2em; font-size: 1.05rem; }
    .q { font-weight: 600; }
    a { color: #3cd0ff; }
    .foot { margin-top: 3em; color: #8a7a6d; font-size: 13px; border-top: 1px solid #3a2f26; padding-top: 14px; }
    code { background: #221b16; padding: 1px 6px; border-radius: 4px; color: #7dff5a; }
  </style>
</head>
<body>
  <div class="wrap">
    <h1>Forge Launcher — frequently asked</h1>
    <p>Served straight from the launcher at <code>/Faq.aspx</code> — no browser tab needed, the FAQ tab opens it in-app.</p>

    <h2><span class="q">Why does my shelf say 5 games when I only remember installing 3?</span></h2>
    <p>On boot the launcher reconciles <code>library/</code> with the registry: any folder holding a game html joins the shelf automatically,
       named by the game's own <code>&lt;title&gt;</code>. The ceiling is 33 versions.</p>

    <h2><span class="q">What is Lastest Bedrock?</span></h2>
    <p>The bedrock-branded 26.3 build (yes, "Lastest" is the house spelling). It's the first chip in the Download panel and boots
       straight into Forge-VM with the res link on top: <a href="https://blockforge-7zgahplm.manus.game">blockforge-7zgahplm.manus.game</a>.</p>

    <h2><span class="q">Where did the 26 mods come from?</span></h2>
    <p>From XENOTECH-X/GX-Launcher — Xray, VeinMiner, GrappleHook and friends live in the Serve tab. Attach one to a game and it
       rides along; ModsLoader unzips it in the browser and runs its <code>mod.js</code> against the ModAPI shim.</p>

    <h2><span class="q">Does PLAY ever open a browser tab?</span></h2>
    <p>No. Play boots in-app through Forge-VM. Browser-tab mode still exists as boot option 3, but it never triggers on its own.</p>

    <h2><span class="q">What is the GC-Trampoline?</span></h2>
    <p>A flat-loop way to run deep hop chains: each hop allocates a little so the collector fires mid-flight, without the recursion
       ever touching the real stack. The VM shows its counters on the HUD.</p>

    <h2><span class="q">OptiCraft crashes with an x87 fault — is that broken?</span></h2>
    <p>It's real x86 running on the toy Wine stack; the <code>FNCLEX</code> instruction at startup is mapped but not yet implemented.
       The x87 lane is in rc until that clears.</p>

    <div class="foot">Forge Launcher FAQ · served from the project root as Faq.aspx · <a href="Dmca.aspx">DMCA</a></div>
  </div>
</body>
</html>
