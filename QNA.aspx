<%@ Page Language="C#" Title="Forge Launcher — Q&A" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8" />
  <title>Forge Launcher — Q&amp;A</title>
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
    <h1>Q&amp;A — questions and answers</h1>
    <p>The short version of the support inbox. Longer answers live in <a href="Faq.aspx">FAQ</a>.</p>

    <h2><span class="q">How do I add my own game?</span></h2>
    <p><b>Load Game</b> tab → drop the html/zip. It lands in <code>library/</code> and joins the shelf (ceiling: 33) — on next boot <code>reconcileLibrary()</code> adopts any folder that holds a game html, named from its own <code>&lt;title&gt;</code>.</p>

    <h2><span class="q">Can I run a .exe I downloaded?</span></h2>
    <p>Yes — the toy Wine lane loads it through <code>exeInterpreter.ts</code>. Real 32-bit x86, emulated. The x87 (FPU) instructions are still landing, so some builds fault on <code>FNCLEX</code> — that lane is in rc.</p>

    <h2><span class="q">Where are my saves and skins?</span></h2>
    <p>Skins live in local storage under <code>forge.skins.list</code> / <code>forge.skin.current</code>; game saves stay in their <code>library/</code> folder. Nothing leaves the machine — see <a href="security.aspx">security</a>.</p>

    <h2><span class="q">How do I report a bug or contribute?</span></h2>
    <p>Console tab shows the live log — grab the line, open an issue in the repo with the exact filename batch you added. Filenames are literal: typos, parens and trailing hyphens are load-bearing, keep them exactly as-is.</p>

    <h2><span class="q">Is there a download of the whole thing?</span></h2>
    <p>Downloads panel → <b>Lastest Bedrock 26.3 (WASM-GC)</b> zips from your own launcher. The launcher itself runs from <code>ForgeLauncher.exe</code> on your PC.</p>

    <div class="foot">Forge Launcher Q&amp;A · served from the project root as QNA.aspx · <a href="security.aspx">Security</a> · <a href="Credits.aspx">Credits</a> · <a href="Dmca.aspx">DMCA</a></div>
  </div>
</body>
</html>
