<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>JANGJU – InfinityFree Setup</title>
<style>
body{font-family:'Segoe UI',sans-serif;background:#fdf6e3;max-width:800px;margin:0 auto;padding:32px 20px;color:#1a0a00;}
h1{color:#3D0C02;border-bottom:3px solid #C9A84C;padding-bottom:12px;}
.step{background:white;border:1px solid #e0c88a;border-radius:12px;padding:20px;margin:16px 0;}
.num{background:#3D0C02;color:#C9A84C;width:32px;height:32px;border-radius:50%;display:inline-flex;align-items:center;justify-content:center;font-weight:900;margin-right:10px;}
pre{background:#1a0a00;color:#E8C96E;padding:14px;border-radius:8px;overflow-x:auto;font-size:0.88rem;margin:10px 0;}
.warn{background:#fff3cd;border:1px solid #ffc107;border-radius:8px;padding:12px;margin:10px 0;font-size:0.9rem;}
.ok{background:#f0fff4;border:1px solid #86efac;border-radius:8px;padding:12px;margin:10px 0;font-size:0.9rem;}
a{color:#3D0C02;font-weight:700;}
</style>
</head>
<body>
<h1>🦁 Test JANGJU on InfinityFree (Free)</h1>

<div class="step">
  <p><span class="num">1</span><strong>Install Composer on your computer</strong></p>
  <p>Download from: <a href="https://getcomposer.org/Composer-Setup.exe">getcomposer.org/Composer-Setup.exe</a></p>
  <p>Just install it like any Windows program.</p>
</div>

<div class="step">
  <p><span class="num">2</span><strong>Run install.bat</strong></p>
  <p>Double-click <code>install.bat</code> in this folder. It will create a <code>vendor/</code> folder automatically.</p>
  <div class="warn">⚠️ You must do this BEFORE uploading to InfinityFree</div>
</div>

<div class="step">
  <p><span class="num">3</span><strong>Fill in config.php</strong></p>
  <p>Open <code>config.php</code> and add your Gmail and MongoDB details.</p>
</div>

<div class="step">
  <p><span class="num">4</span><strong>Create free account on InfinityFree</strong></p>
  <p>Go to <a href="https://infinityfree.net">infinityfree.net</a> → Sign up → Create Hosting Account</p>
  <p>You get a free domain like <code>jangju.rf.gd</code> or <code>jangju.42web.io</code></p>
</div>

<div class="step">
  <p><span class="num">5</span><strong>Upload files via File Manager</strong></p>
  <p>In InfinityFree control panel → <strong>File Manager</strong> → open <code>htdocs</code> folder → Upload ALL these files:</p>
  <pre>index.html
admin.php
config.php
composer.json
.htaccess
install.bat  (optional)
api/
  orders.php
vendor/       ← VERY IMPORTANT - upload this whole folder!</pre>
  <div class="warn">⚠️ If you don't upload the <code>vendor/</code> folder, the site will show errors.</div>
</div>

<div class="step">
  <p><span class="num">6</span><strong>Enable MongoDB extension on InfinityFree</strong></p>
  <p>InfinityFree control panel → <strong>PHP Configuration</strong> → enable <code>mongodb</code> extension</p>
  <div class="warn">⚠️ If MongoDB extension is not available on InfinityFree, use <strong>000webhost.com</strong> instead — it has more PHP extensions.</div>
</div>

<div class="step">
  <p><span class="num">7</span><strong>Test your website</strong></p>
  <p>Visit your InfinityFree URL → Place a test order → Check:</p>
  <div class="ok">
    ✅ Order confirmation popup appears<br>
    ✅ MongoDB Atlas → Browse Collections → jangju → orders (your order appears)<br>
    ✅ Gmail inbox → you receive order email notification<br>
    ✅ Visit <code>yoursite.rf.gd/admin.php</code> → login → see your order
  </div>
</div>

<div class="step">
  <p><span class="num">8</span><strong>When ready — move to Hostinger</strong></p>
  <p>Same files, same steps. Just upload to Hostinger <code>public_html</code> instead of InfinityFree <code>htdocs</code>. Connect your GoDaddy domain and you're live!</p>
</div>
</body>
</html>
