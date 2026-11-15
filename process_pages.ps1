$ErrorActionPreference = 'Stop'

$navHtmlDomestic = @'
      <!-- Desktop Nav Menu Pills (7-item consistent structure) -->
      <nav class="nav-links" aria-label="Main Navigation">
        <a href="index.html" class="nav-link-btn">
          <span>Home</span>
        </a>
        <a href="grooming.html" class="nav-link-btn">
          <span>Grooming</span>
          <span class="nav-badge">Doorstep</span>
        </a>
        <a href="pet-relocation.html" class="nav-link-btn">
          <span>Pet Relocation</span>
          <span class="nav-badge" style="background:#0D9488;">Hub</span>
        </a>
        <a href="pet-relocation-by-train.html" class="nav-link-btn">
          <span>Train Travel</span>
          <span class="nav-badge" style="background:#2563EB;">Rules</span>
        </a>
        <a href="domestic-pet-transport.html" class="nav-link-btn active">
          <span>Domestic Transport</span>
          <span class="nav-badge" style="background:#EA580C;">Air/Road</span>
        </a>
        <a href="pet-courier-service.html" class="nav-link-btn">
          <span>Pet Courier</span>
        </a>
        <a href="pet-relocation-cost.html" class="nav-link-btn">
          <span>Cost Guide</span>
          <span class="nav-badge" style="background:#16A34A;">Pricing</span>
        </a>
      </nav>
'@

$navHtmlCourier = @'
      <!-- Desktop Nav Menu Pills (7-item consistent structure) -->
      <nav class="nav-links" aria-label="Main Navigation">
        <a href="index.html" class="nav-link-btn">
          <span>Home</span>
        </a>
        <a href="grooming.html" class="nav-link-btn">
          <span>Grooming</span>
          <span class="nav-badge">Doorstep</span>
        </a>
        <a href="pet-relocation.html" class="nav-link-btn">
          <span>Pet Relocation</span>
          <span class="nav-badge" style="background:#0D9488;">Hub</span>
        </a>
        <a href="pet-relocation-by-train.html" class="nav-link-btn">
          <span>Train Travel</span>
          <span class="nav-badge" style="background:#2563EB;">Rules</span>
        </a>
        <a href="domestic-pet-transport.html" class="nav-link-btn">
          <span>Domestic Transport</span>
        </a>
        <a href="pet-courier-service.html" class="nav-link-btn active">
          <span>Pet Courier</span>
          <span class="nav-badge" style="background:#8B5CF6;">Doorstep</span>
        </a>
        <a href="pet-relocation-cost.html" class="nav-link-btn">
          <span>Cost Guide</span>
          <span class="nav-badge" style="background:#16A34A;">Pricing</span>
        </a>
      </nav>
'@

$navHtmlRelocation = @'
      <!-- Desktop Nav Menu Pills (7-item consistent structure) -->
      <nav class="nav-links" aria-label="Main Navigation">
        <a href="index.html" class="nav-link-btn">
          <span>Home</span>
        </a>
        <a href="grooming.html" class="nav-link-btn">
          <span>Grooming</span>
          <span class="nav-badge">Doorstep</span>
        </a>
        <a href="pet-relocation.html" class="nav-link-btn active">
          <span>Pet Relocation</span>
          <span class="nav-badge" style="background:#0D9488;">Hub</span>
        </a>
        <a href="pet-relocation-by-train.html" class="nav-link-btn">
          <span>Train Travel</span>
          <span class="nav-badge" style="background:#2563EB;">Rules</span>
        </a>
        <a href="domestic-pet-transport.html" class="nav-link-btn">
          <span>Domestic Transport</span>
        </a>
        <a href="pet-courier-service.html" class="nav-link-btn">
          <span>Pet Courier</span>
        </a>
        <a href="pet-relocation-cost.html" class="nav-link-btn">
          <span>Cost Guide</span>
          <span class="nav-badge" style="background:#16A34A;">Pricing</span>
        </a>
      </nav>
'@

$mobileNavDomestic = @'
    <div class="mobile-nav-drawer" id="mobileMenu">
      <div class="mobile-nav-list">
        <a href="index.html" class="mobile-nav-item"><span>🏠 Home (All Services)</span><span>→</span></a>
        <a href="grooming.html" class="mobile-nav-item"><span>✂️ Doorstep Pet Grooming</span><span class="nav-badge">Doorstep</span></a>
        <a href="pet-relocation.html" class="mobile-nav-item"><span>🐾 Pet Relocation Hub</span><span class="nav-badge" style="background:#0D9488;">Hub</span></a>
        <a href="pet-relocation-by-train.html" class="mobile-nav-item"><span>🚆 Train Travel Guidelines</span><span class="nav-badge" style="background:#2563EB;">Rules</span></a>
        <a href="domestic-pet-transport.html" class="mobile-nav-item highlight-nav"><span>✈️ Domestic Pet Transport</span><span class="nav-badge" style="background:#EA580C;">Air/Road</span></a>
        <a href="pet-courier-service.html" class="mobile-nav-item"><span>🚐 Door-to-Door Pet Courier</span><span>→</span></a>
        <a href="pet-relocation-cost.html" class="mobile-nav-item"><span>💰 Pet Relocation Cost Guide</span><span class="nav-badge" style="background:#16A34A;">Pricing</span></a>
      </div>
      <div style="margin-top: 18px;">
        <a href="#quote-form" class="header-btn-primary" style="display:flex; justify-content:center; width:100%; text-decoration:none;" onclick="toggleMobileMenu()">Request Transit Quote Now →</a>
      </div>
    </div>
'@

$mobileNavCourier = @'
    <div class="mobile-nav-drawer" id="mobileMenu">
      <div class="mobile-nav-list">
        <a href="index.html" class="mobile-nav-item"><span>🏠 Home (All Services)</span><span>→</span></a>
        <a href="grooming.html" class="mobile-nav-item"><span>✂️ Doorstep Pet Grooming</span><span class="nav-badge">Doorstep</span></a>
        <a href="pet-relocation.html" class="mobile-nav-item"><span>🐾 Pet Relocation Hub</span><span class="nav-badge" style="background:#0D9488;">Hub</span></a>
        <a href="pet-relocation-by-train.html" class="mobile-nav-item"><span>🚆 Train Travel Guidelines</span><span class="nav-badge" style="background:#2563EB;">Rules</span></a>
        <a href="domestic-pet-transport.html" class="mobile-nav-item"><span>✈️ Domestic Pet Transport</span><span>→</span></a>
        <a href="pet-courier-service.html" class="mobile-nav-item highlight-nav"><span>🚐 Door-to-Door Pet Courier</span><span class="nav-badge" style="background:#8B5CF6;">Doorstep</span></a>
        <a href="pet-relocation-cost.html" class="mobile-nav-item"><span>💰 Pet Relocation Cost Guide</span><span class="nav-badge" style="background:#16A34A;">Pricing</span></a>
      </div>
      <div style="margin-top: 18px;">
        <a href="#quote-widget" class="header-btn-primary" style="display:flex; justify-content:center; width:100%; text-decoration:none;" onclick="toggleMobileMenu()">Request Courier Quote Now →</a>
      </div>
    </div>
'@

$mobileNavRelocation = @'
    <div class="mobile-nav-drawer" id="mobileMenu">
      <div class="mobile-nav-list">
        <a href="index.html" class="mobile-nav-item"><span>🏠 Home (All Services)</span><span>→</span></a>
        <a href="grooming.html" class="mobile-nav-item"><span>✂️ Doorstep Pet Grooming</span><span class="nav-badge">Doorstep</span></a>
        <a href="pet-relocation.html" class="mobile-nav-item highlight-nav"><span>🐾 Pet Relocation Hub</span><span class="nav-badge" style="background:#0D9488;">Hub</span></a>
        <a href="pet-relocation-by-train.html" class="mobile-nav-item"><span>🚆 Train Travel Guidelines</span><span class="nav-badge" style="background:#2563EB;">Rules</span></a>
        <a href="domestic-pet-transport.html" class="mobile-nav-item"><span>✈️ Domestic Pet Transport</span><span>→</span></a>
        <a href="pet-courier-service.html" class="mobile-nav-item"><span>🚐 Door-to-Door Pet Courier</span><span>→</span></a>
        <a href="pet-relocation-cost.html" class="mobile-nav-item"><span>💰 Pet Relocation Cost Guide</span><span class="nav-badge" style="background:#16A34A;">Pricing</span></a>
      </div>
      <div style="margin-top: 18px;">
        <a href="#quote-form" class="header-btn-primary" style="display:flex; justify-content:center; width:100%; text-decoration:none;" onclick="toggleMobileMenu()">Request Relocation Quote Now →</a>
      </div>
    </div>
'@

# Process Domestic Pet Transport
$f3Path = 'C:\Users\FE0121QU\.gemini\antigravity\brain\88fb7ce7-2f19-48f2-bc48-68f919e5b355\.user_uploaded\media_1794759792613_31112d49.html'
$html3 = [System.IO.File]::ReadAllText($f3Path, [System.Text.Encoding]::UTF8)

# Replace Nav Links block
$html3 = [System.Text.RegularExpressions.Regex]::Replace($html3, '(?s)<nav class="nav-links".*?</nav>', $navHtmlDomestic)
# Replace Mobile Nav Drawer
$html3 = [System.Text.RegularExpressions.Regex]::Replace($html3, '(?s)<div class="mobile-nav-drawer"[^>]*>.*?</div>\s*</header>', "$mobileNavDomestic`n  </header>")

# Clean confirmations and URLs
$html3 = $html3.Replace('[CONFIRM: client number]', '')
$html3 = $html3.Replace('[CONFIRM: client phone: 93540 74426]', '')
$html3 = [System.Text.RegularExpressions.Regex]::Replace($html3, '\[CONFIRM:[^\]]+\]', '')
$html3 = $html3.Replace('href="/"', 'href="index.html"')
$html3 = $html3.Replace('href="/pet-relocation/"', 'href="pet-relocation.html"')
$html3 = $html3.Replace('href="/pet-relocation/domestic/"', 'href="domestic-pet-transport.html"')
$html3 = $html3.Replace('href="/pet-relocation/by-train/"', 'href="pet-relocation-by-train.html"')
$html3 = $html3.Replace('href="/pet-relocation/cost/"', 'href="pet-relocation-cost.html"')
$html3 = $html3.Replace('href="/pet-relocation/pet-courier-service/"', 'href="pet-courier-service.html"')
$html3 = $html3.Replace('href="/grooming.html"', 'href="grooming.html"')
$html3 = $html3.Replace('href="/grooming/"', 'href="grooming.html"')
$html3 = $html3.Replace('href="../index.html"', 'href="index.html"')

# Clean corrupted entities if any
$html3 = $html3.Replace('â€™', "'").Replace('â€“', "–").Replace('â€”', "—").Replace('â€œ', '"').Replace('â€', '"')

[System.IO.File]::WriteAllText("domestic-pet-transport.html", $html3, [System.Text.Encoding]::UTF8)
Write-Host "Created domestic-pet-transport.html successfully."

# Process Pet Courier Service
$f4Path = 'C:\Users\FE0121QU\.gemini\antigravity\brain\88fb7ce7-2f19-48f2-bc48-68f919e5b355\.user_uploaded\media_1794759792633_0f63d87f.html'
$html4 = [System.IO.File]::ReadAllText($f4Path, [System.Text.Encoding]::UTF8)

# Replace Nav Links block
$html4 = [System.Text.RegularExpressions.Regex]::Replace($html4, '(?s)<nav class="nav-links".*?</nav>', $navHtmlCourier)
# Replace Mobile Nav Drawer
$html4 = [System.Text.RegularExpressions.Regex]::Replace($html4, '(?s)<div class="mobile-nav-drawer"[^>]*>.*?</div>\s*</header>', "$mobileNavCourier`n  </header>")

# Clean confirmations and URLs
$html4 = $html4.Replace('[CONFIRM: client number]', '')
$html4 = $html4.Replace('[CONFIRM: service cities]', '')
$html4 = [System.Text.RegularExpressions.Regex]::Replace($html4, '\[CONFIRM:[^\]]+\]', '')
$html4 = $html4.Replace('href="/"', 'href="index.html"')
$html4 = $html4.Replace('href="/pet-relocation/"', 'href="pet-relocation.html"')
$html4 = $html4.Replace('href="/pet-relocation/domestic/"', 'href="domestic-pet-transport.html"')
$html4 = $html4.Replace('href="/pet-relocation/by-train/"', 'href="pet-relocation-by-train.html"')
$html4 = $html4.Replace('href="/pet-relocation/cost/"', 'href="pet-relocation-cost.html"')
$html4 = $html4.Replace('href="/pet-relocation/pet-courier-service/"', 'href="pet-courier-service.html"')
$html4 = $html4.Replace('href="/grooming.html"', 'href="grooming.html"')
$html4 = $html4.Replace('href="/grooming/"', 'href="grooming.html"')
$html4 = $html4.Replace('href="../index.html"', 'href="index.html"')
$html4 = $html4.Replace('â€™', "'").Replace('â€“', "–").Replace('â€”', "—").Replace('â€œ', '"').Replace('â€', '"')

[System.IO.File]::WriteAllText("pet-courier-service.html", $html4, [System.Text.Encoding]::UTF8)
Write-Host "Created pet-courier-service.html successfully."

# Process Pet Relocation Hub
$f5Path = 'C:\Users\FE0121QU\.gemini\antigravity\brain\88fb7ce7-2f19-48f2-bc48-68f919e5b355\.user_uploaded\media_1794759792648_b262ee21.html'
$html5 = [System.IO.File]::ReadAllText($f5Path, [System.Text.Encoding]::UTF8)

# Replace Nav Links block
$html5 = [System.Text.RegularExpressions.Regex]::Replace($html5, '(?s)<nav class="nav-links".*?</nav>', $navHtmlRelocation)
# Replace Mobile Nav Drawer
$html5 = [System.Text.RegularExpressions.Regex]::Replace($html5, '(?s)<div class="mobile-nav-drawer"[^>]*>.*?</div>\s*</header>', "$mobileNavRelocation`n  </header>")

# Clean confirmations and URLs
$html5 = $html5.Replace('[CONFIRM: client number]', '')
$html5 = $html5.Replace('[CONFIRM: client phone: 93540 74426]', '')
$html5 = [System.Text.RegularExpressions.Regex]::Replace($html5, '\[CONFIRM:[^\]]+\]', '')
$html5 = $html5.Replace('href="/"', 'href="index.html"')
$html5 = $html5.Replace('href="/pet-relocation/"', 'href="pet-relocation.html"')
$html5 = $html5.Replace('href="/pet-relocation/domestic/"', 'href="domestic-pet-transport.html"')
$html5 = $html5.Replace('href="/pet-relocation/by-train/"', 'href="pet-relocation-by-train.html"')
$html5 = $html5.Replace('href="/pet-relocation/cost/"', 'href="pet-relocation-cost.html"')
$html5 = $html5.Replace('href="/pet-relocation/pet-courier-service/"', 'href="pet-courier-service.html"')
$html5 = $html5.Replace('href="/grooming.html"', 'href="grooming.html"')
$html5 = $html5.Replace('href="/grooming/"', 'href="grooming.html"')
$html5 = $html5.Replace('href="../grooming.html"', 'href="grooming.html"')
$html5 = $html5.Replace('href="../index.html"', 'href="index.html"')
$html5 = $html5.Replace('â€™', "'").Replace('â€“', "–").Replace('â€”', "—").Replace('â€œ', '"').Replace('â€', '"')

[System.IO.File]::WriteAllText("pet-relocation.html", $html5, [System.Text.Encoding]::UTF8)
Write-Host "Created pet-relocation.html successfully."
