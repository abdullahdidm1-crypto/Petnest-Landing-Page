$ErrorActionPreference = 'Stop'

# ==========================================
# 1. UPDATE INDEX.HTML
# ==========================================
$indexPath = 'c:\Users\FE0121QU\OneDrive\Desktop\DIDM\Petnest Project Landing Page\index.html'
$indexHtml = [System.IO.File]::ReadAllText($indexPath, [System.Text.Encoding]::UTF8)

# Unified Desktop Nav for index.html (Home is active)
$indexNav = @'
      <!-- Desktop Nav Menu Pills (7-item consistent structure matching thepetnest.com) -->
      <nav class="nav-links" aria-label="Main Navigation">
        <a href="index.html" class="nav-link-btn active">
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
        <a href="pet-courier-service.html" class="nav-link-btn">
          <span>Pet Courier</span>
        </a>
        <a href="pet-relocation-cost.html" class="nav-link-btn">
          <span>Cost Guide</span>
          <span class="nav-badge" style="background:#16A34A;">Pricing</span>
        </a>
      </nav>
'@

# Unified Mobile Drawer for index.html
$indexMobileDrawer = @'
    <div class="mobile-nav-drawer" id="mobileMenu">
      <div class="mobile-nav-list">
        <a href="index.html" class="mobile-nav-item highlight-nav" onclick="toggleMobileMenu()">
          <span>🏠 Home (All Services)</span>
          <span>→</span>
        </a>
        <a href="grooming.html" class="mobile-nav-item" onclick="toggleMobileMenu()">
          <span>✂️ Doorstep Pet Grooming</span>
          <span class="nav-badge">Doorstep</span>
        </a>
        <a href="pet-relocation.html" class="mobile-nav-item" onclick="toggleMobileMenu()">
          <span>🐾 Pet Relocation Hub</span>
          <span class="nav-badge" style="background:#0D9488;">Hub</span>
        </a>
        <a href="pet-relocation-by-train.html" class="mobile-nav-item" onclick="toggleMobileMenu()">
          <span>🚆 Train Travel Guidelines</span>
          <span class="nav-badge" style="background:#2563EB;">Rules</span>
        </a>
        <a href="domestic-pet-transport.html" class="mobile-nav-item" onclick="toggleMobileMenu()">
          <span>✈️ Domestic Pet Transport</span>
          <span>→</span>
        </a>
        <a href="pet-courier-service.html" class="mobile-nav-item" onclick="toggleMobileMenu()">
          <span>🚐 Door-to-Door Pet Courier</span>
          <span>→</span>
        </a>
        <a href="pet-relocation-cost.html" class="mobile-nav-item" onclick="toggleMobileMenu()">
          <span>💰 Pet Relocation Cost Guide</span>
          <span class="nav-badge" style="background:#16A34A;">Pricing</span>
        </a>
      </div>
      <div style="margin-top: 18px;">
        <a href="grooming.html" class="header-btn-primary" style="display:flex; justify-content:center; width:100%; text-decoration:none;" onclick="toggleMobileMenu()">
          <span>Book Doorstep Groomer Now →</span>
        </a>
      </div>
    </div>
'@

# Clean, professional, high-converting Multi-Service Booking Card for Hero in index.html
$cleanBookingCard = @'
          <!-- Clean High-Converting Multi-Service Booking Card -->
          <div class="service-booking-widget" id="booking-widget">
            <div class="widget-tabs-nav" role="tablist">
              <button type="button" class="widget-tab-btn active" onclick="showWidgetTab(event, 'tab-groom')">
                <span>✂️ Grooming</span>
              </button>
              <button type="button" class="widget-tab-btn" onclick="showWidgetTab(event, 'tab-relocate')">
                <span>🐾 Relocation</span>
              </button>
              <button type="button" class="widget-tab-btn" onclick="showWidgetTab(event, 'tab-vet')">
                <span>🩺 Vet Care</span>
              </button>
              <button type="button" class="widget-tab-btn" onclick="showWidgetTab(event, 'tab-train')">
                <span>🐕 Training</span>
              </button>
              <button type="button" class="widget-tab-btn" onclick="showWidgetTab(event, 'tab-board')">
                <span>🏡 Boarding</span>
              </button>
              <button type="button" class="widget-tab-btn" onclick="showWidgetTab(event, 'tab-walk')">
                <span>🦮 Walking</span>
              </button>
            </div>

            <!-- Tab 1: Grooming -->
            <div class="widget-tab-pane active" id="tab-groom">
              <div class="widget-form-grid">
                <div class="form-field-group">
                  <label for="groom-pet">Pet Type</label>
                  <select id="groom-pet">
                    <option value="Dog">Dog</option>
                    <option value="Cat">Cat</option>
                  </select>
                </div>
                <div class="form-field-group">
                  <label for="groom-pkg">Package</label>
                  <select id="groom-pkg">
                    <option value="Spa Bath & Blow Dry">Spa Bath & Blow Dry (₹800)</option>
                    <option value="Bath + Basic Grooming">Bath + Basic Grooming (₹1,199)</option>
                    <option value="Full Service Grooming + Haircut">Full Grooming + Haircut (₹1,499)</option>
                    <option value="Anti-Tick & Flea Treatment">Anti-Tick & Flea Spa (₹1,899)</option>
                  </select>
                </div>
                <div class="form-field-group">
                  <label for="groom-city">City / Area</label>
                  <select id="groom-city">
                    <option value="Delhi NCR">Delhi NCR</option>
                    <option value="Gurugram">Gurugram</option>
                    <option value="Noida">Noida / Gr. Noida</option>
                    <option value="Ghaziabad">Ghaziabad / Faridabad</option>
                    <option value="Mumbai">Mumbai</option>
                    <option value="Bengaluru">Bengaluru</option>
                    <option value="Hyderabad">Hyderabad</option>
                    <option value="Pune">Pune</option>
                  </select>
                </div>
                <div>
                  <button type="button" class="widget-submit-btn" onclick="submitServiceLead('Grooming')">
                    <span>Book Groomer →</span>
                  </button>
                </div>
              </div>
              <div style="display:flex; justify-content:space-between; align-items:center; margin-top:10px; font-size:0.78rem; flex-wrap:wrap; gap:8px;">
                <span style="color:var(--text-muted);">⭐ <em>Sanitized tool kit, hospital-grade hygiene, certified stylists at your door.</em></span>
                <a href="grooming.html" style="color:var(--primary); font-weight:700; text-decoration:none;">View Full Grooming Page &amp; Photos &rarr;</a>
              </div>
            </div>

            <!-- Tab 2: Relocation -->
            <div class="widget-tab-pane" id="tab-relocate">
              <div class="widget-form-grid">
                <div class="form-field-group">
                  <label for="relocate-mode">Travel Mode</label>
                  <select id="relocate-mode">
                    <option value="Train Travel">🚆 Train Travel (AC 1st Coupe)</option>
                    <option value="Flight Cargo">✈️ Air Cargo / In-Cabin Flight</option>
                    <option value="AC Road Pet Taxi">🚗 Dedicated AC Road Taxi</option>
                    <option value="Door-to-Door Courier">🚐 Doorstep Pet Courier</option>
                  </select>
                </div>
                <div class="form-field-group">
                  <label for="relocate-route">Route / Origin &rarr; Destination</label>
                  <input type="text" id="relocate-route" placeholder="e.g. Delhi to Mumbai / Bangalore">
                </div>
                <div class="form-field-group">
                  <label for="relocate-phone">Your Mobile</label>
                  <input type="tel" id="relocate-phone" placeholder="Enter 10-digit number" maxlength="10">
                </div>
                <div>
                  <button type="button" class="widget-submit-btn" onclick="submitRelocationLead()">
                    <span>Get Free Quote →</span>
                  </button>
                </div>
              </div>
              <div style="display:flex; justify-content:space-between; align-items:center; margin-top:10px; font-size:0.78rem; flex-wrap:wrap; gap:8px;">
                <span style="color:var(--text-muted);">🐾 <em>Safe pan-India live animal transit with vet health checks &amp; GPS updates.</em></span>
                <span style="display:inline-flex; gap:12px;">
                  <a href="pet-relocation-by-train.html" style="color:#2563EB; font-weight:700; text-decoration:none;">Train Rules &rarr;</a>
                  <a href="pet-relocation-cost.html" style="color:#16A34A; font-weight:700; text-decoration:none;">Cost Guide &rarr;</a>
                  <a href="pet-relocation.html" style="color:var(--primary); font-weight:700; text-decoration:none;">Relocation Hub &rarr;</a>
                </span>
              </div>
            </div>

            <!-- Tab 3: Vet Care -->
            <div class="widget-tab-pane" id="tab-vet">
              <div class="widget-form-grid">
                <div class="form-field-group">
                  <label for="vet-type">Consultation Type</label>
                  <select id="vet-type">
                    <option value="24/7 Video Consult">24/7 Online Video Consult (₹399)</option>
                    <option value="Doctor Doorstep Visit">Doctor Doorstep Visit (₹899)</option>
                    <option value="Home Vaccination">Home Vaccination &amp; Deworming (₹999)</option>
                  </select>
                </div>
                <div class="form-field-group">
                  <label for="vet-concern">Pet Concern</label>
                  <select id="vet-concern">
                    <option value="General Health / Fever">General Checkup / Fever</option>
                    <option value="Skin Itching & Ticks">Skin Itching, Rashes &amp; Ticks</option>
                    <option value="Vomiting / Loose Motion">Vomiting / Loose Motion</option>
                    <option value="Diet / Nutrition Plan">Diet &amp; Nutrition Advice</option>
                  </select>
                </div>
                <div class="form-field-group">
                  <label for="vet-phone">Your Mobile</label>
                  <input type="tel" id="vet-phone" placeholder="Enter 10-digit number" maxlength="10">
                </div>
                <div>
                  <button type="button" class="widget-submit-btn" onclick="submitServiceLead('Vet Care')">
                    <span>Consult Doctor →</span>
                  </button>
                </div>
              </div>
              <p style="font-size:0.75rem; color:var(--text-muted); margin-top:8px;">
                🩺 <em>Connect with licensed veterinary surgeons in under 15 minutes. Prescription sent via WhatsApp.</em>
              </p>
            </div>

            <!-- Tab 4: Training -->
            <div class="widget-tab-pane" id="tab-train">
              <div class="widget-form-grid">
                <div class="form-field-group">
                  <label for="train-mod">Training Module</label>
                  <select id="train-mod">
                    <option value="Puppy Foundation">Puppy Foundation (2-5 Months)</option>
                    <option value="Basic Obedience & Leash Walking">Basic Obedience &amp; Leash Walking</option>
                    <option value="Aggression / Excessive Barking Correction">Aggression / Barking Correction</option>
                    <option value="Advanced Off-Leash Command">Advanced Off-Leash Skills</option>
                  </select>
                </div>
                <div class="form-field-group">
                  <label for="train-breed">Dog Breed</label>
                  <input type="text" id="train-breed" placeholder="e.g. Golden Retriever, Labrador, Indie">
                </div>
                <div class="form-field-group">
                  <label for="train-phone">Your Mobile</label>
                  <input type="tel" id="train-phone" placeholder="Enter 10-digit number" maxlength="10">
                </div>
                <div>
                  <button type="button" class="widget-submit-btn" onclick="submitServiceLead('Dog Training')">
                    <span>Book Trial Demo →</span>
                  </button>
                </div>
              </div>
              <p style="font-size:0.75rem; color:var(--text-muted); margin-top:8px;">
                🐕 <em>Positive reinforcement, zero punishment, certified in-home trainers across Delhi NCR.</em>
              </p>
            </div>

            <!-- Tab 5: Boarding -->
            <div class="widget-tab-pane" id="tab-board">
              <div class="widget-form-grid">
                <div class="form-field-group">
                  <label for="board-dates">Boarding Dates</label>
                  <input type="text" id="board-dates" placeholder="e.g. Friday to Sunday (3 days)">
                </div>
                <div class="form-field-group">
                  <label for="board-locality">Locality / Sector</label>
                  <input type="text" id="board-locality" placeholder="e.g. Indirapuram / DLF Phase 5 / Whitefield">
                </div>
                <div class="form-field-group">
                  <label for="board-phone">Your Mobile</label>
                  <input type="tel" id="board-phone" placeholder="Enter 10-digit number" maxlength="10">
                </div>
                <div>
                  <button type="button" class="widget-submit-btn" onclick="submitServiceLead('Pet Boarding')">
                    <span>Find Host Home →</span>
                  </button>
                </div>
              </div>
              <p style="font-size:0.75rem; color:var(--text-muted); margin-top:8px;">
                🏡 <em>100% Cage-free family host homes with daily video updates and custom feeding schedules.</em>
              </p>
            </div>

            <!-- Tab 6: Walking -->
            <div class="widget-tab-pane" id="tab-walk">
              <div class="widget-form-grid">
                <div class="form-field-group">
                  <label for="walk-sched">Walking Schedule</label>
                  <select id="walk-sched">
                    <option value="Twice Daily (Morning + Evening)">Twice Daily (Morning + Evening 40m)</option>
                    <option value="Once Daily (Morning or Evening)">Once Daily (Morning or Evening 45m)</option>
                  </select>
                </div>
                <div class="form-field-group">
                  <label for="walk-locality">Locality</label>
                  <input type="text" id="walk-locality" placeholder="e.g. Sector 50 Noida, Powai Mumbai">
                </div>
                <div class="form-field-group">
                  <label for="walk-phone">Your Mobile</label>
                  <input type="tel" id="walk-phone" placeholder="Enter 10-digit number" maxlength="10">
                </div>
                <div>
                  <button type="button" class="widget-submit-btn" onclick="submitServiceLead('Dog Walking')">
                    <span>Book Daily Walker →</span>
                  </button>
                </div>
              </div>
              <p style="font-size:0.75rem; color:var(--text-muted); margin-top:8px;">
                🦮 <em>GPS route tracking, paw wipe after walks, verified dog walkers.</em>
              </p>
            </div>
          </div>
'@

# Replace Nav in index.html
$indexHtml = [System.Text.RegularExpressions.Regex]::Replace($indexHtml, '(?s)<nav class="nav-links".*?</nav>', $indexNav)

# Replace Mobile Menu Drawer in index.html
$indexHtml = [System.Text.RegularExpressions.Regex]::Replace($indexHtml, '(?s)<div class="mobile-nav-drawer" id="mobileMenu">.*?</div>\s*</header>', "$indexMobileDrawer`n  </header>")

# Replace the broken booking container and broken widget tabs in index.html
$patternBooking = '(?s)<!-- Multi-Service Interactive Booking Widget -->.*?<!-- Right Hero Visual Card'
$indexHtml = [System.Text.RegularExpressions.Regex]::Replace($indexHtml, $patternBooking, "$cleanBookingCard`n        </div>`n`n        <!-- Right Hero Visual Card")

# Update Footer with 7 pages in index.html
$footerRelocationCol = @'
      <div class="footer-col">
        <h4>Pet Relocation</h4>
        <ul class="footer-links">
          <li><a href="pet-relocation.html" style="color:var(--primary); font-weight:700;">🐾 Pet Relocation Hub</a></li>
          <li><a href="pet-relocation-by-train.html">🚆 Train Travel Guidelines</a></li>
          <li><a href="domestic-pet-transport.html">✈️ Domestic Pet Transport</a></li>
          <li><a href="pet-courier-service.html">🚐 Doorstep Pet Courier</a></li>
          <li><a href="pet-relocation-cost.html">💰 Cost &amp; Price Guide</a></li>
        </ul>
      </div>
'@

$targetFooter = '<div class="footer-col">' + "`n" + '        <h4>Core Services</h4>'
$replacementFooter = $footerRelocationCol + "`n`n      " + $targetFooter

if (-not $indexHtml.Contains('pet-relocation-by-train.html')) {
  $indexHtml = $indexHtml.Replace($targetFooter, $replacementFooter)
}

# Add submission JS to index.html
$scriptEnhancement = @'
    function submitServiceLead(service) {
      let pet = document.getElementById('groom-pet') ? document.getElementById('groom-pet').value : 'Pet';
      let pkg = document.getElementById('groom-pkg') ? document.getElementById('groom-pkg').value : '';
      let city = document.getElementById('groom-city') ? document.getElementById('groom-city').value : 'Delhi NCR';
      let text = `Hi ThePetNest! I would like to book ${service} (${pet} - ${pkg}) in ${city}. Please share available slots.`;
      window.open(`https://wa.me/919354074426?text=${encodeURIComponent(text)}`, '_blank');
    }

    function submitRelocationLead() {
      let mode = document.getElementById('relocate-mode') ? document.getElementById('relocate-mode').value : 'Pet Relocation';
      let route = document.getElementById('relocate-route') ? document.getElementById('relocate-route').value : 'Within India';
      let phone = document.getElementById('relocate-phone') ? document.getElementById('relocate-phone').value : '';
      let text = `Hi ThePetNest! I need a pet relocation quote for ${mode} on route: ${route}. Contact: ${phone}`;
      window.open(`https://wa.me/919354074426?text=${encodeURIComponent(text)}`, '_blank');
    }
'@

if (-not $indexHtml.Contains('function submitServiceLead')) {
  $indexHtml = $indexHtml.Replace('function openWhatsApp(serviceName) {', "$scriptEnhancement`n`n    function openWhatsApp(serviceName) {")
}

[System.IO.File]::WriteAllText($indexPath, $indexHtml, [System.Text.Encoding]::UTF8)
Write-Host "Updated index.html successfully."


# ==========================================
# 2. UPDATE GROOMING.HTML
# ==========================================
$groomingPath = 'c:\Users\FE0121QU\OneDrive\Desktop\DIDM\Petnest Project Landing Page\grooming.html'
$groomHtml = [System.IO.File]::ReadAllText($groomingPath, [System.Text.Encoding]::UTF8)

# Unified Desktop Nav for grooming.html (Grooming is active)
$groomNav = @'
      <!-- Desktop Nav Menu Pills (7-item consistent structure matching thepetnest.com) -->
      <nav class="nav-links" id="desktop-nav" aria-label="Main Navigation">
        <a href="index.html" class="nav-link-btn" id="nav-home">
          <span>Home</span>
        </a>
        <a href="grooming.html" class="nav-link-btn active" id="nav-grooming" style="color:var(--primary); font-weight:700;">
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
        <a href="pet-courier-service.html" class="nav-link-btn">
          <span>Pet Courier</span>
        </a>
        <a href="pet-relocation-cost.html" class="nav-link-btn">
          <span>Cost Guide</span>
          <span class="nav-badge" style="background:#16A34A;">Pricing</span>
        </a>
      </nav>
'@

# Clean Mobile Drawer for grooming.html
$groomMobileDrawer = @'
    <!-- Mobile Slide-Down Navigation Drawer -->
    <div class="mobile-nav-drawer" id="mobile-drawer" aria-hidden="true">
      <div class="mobile-drawer-inner">
        <div class="mobile-city-tag">
          <span>🐾 Serving Delhi, Gurgaon, Noida, Ghaziabad &amp; Faridabad</span>
        </div>
        <nav class="mobile-nav-list" aria-label="Mobile Navigation">
          <a href="index.html" class="mobile-nav-item" onclick="closeMobileNav()">
            <span class="m-icon">🏠</span>
            <div class="m-text">
              <strong>Main Homepage</strong>
              <span>Back to ThePetNest Platform</span>
            </div>
            <span class="m-arrow">&rarr;</span>
          </a>
          <a href="grooming.html" class="mobile-nav-item" style="background:var(--primary-light);" onclick="closeMobileNav()">
            <span class="m-icon">✂️</span>
            <div class="m-text">
              <strong style="color:var(--primary);">Doorstep Pet Grooming</strong>
              <span>Baths, haircuts, spa &amp; tick care</span>
            </div>
            <span class="m-arrow">&check;</span>
          </a>
          <a href="pet-relocation.html" class="mobile-nav-item" onclick="closeMobileNav()">
            <span class="m-icon">🐾</span>
            <div class="m-text">
              <strong>Pet Relocation Hub</strong>
              <span>Flight, train &amp; road pet transit</span>
            </div>
            <span class="m-arrow">&rarr;</span>
          </a>
          <a href="pet-relocation-by-train.html" class="mobile-nav-item" onclick="closeMobileNav()">
            <span class="m-icon">🚆</span>
            <div class="m-text">
              <strong>Train Travel Guidelines</strong>
              <span>IRCTC coupe booking &amp; rules</span>
            </div>
            <span class="m-arrow">&rarr;</span>
          </a>
          <a href="domestic-pet-transport.html" class="mobile-nav-item" onclick="closeMobileNav()">
            <span class="m-icon">✈️</span>
            <div class="m-text">
              <strong>Domestic Pet Transport</strong>
              <span>Doorstep pickup across India</span>
            </div>
            <span class="m-arrow">&rarr;</span>
          </a>
          <a href="pet-courier-service.html" class="mobile-nav-item" onclick="closeMobileNav()">
            <span class="m-icon">🚐</span>
            <div class="m-text">
              <strong>Pet Courier Service</strong>
              <span>Dedicated animal handlers</span>
            </div>
            <span class="m-arrow">&rarr;</span>
          </a>
          <a href="pet-relocation-cost.html" class="mobile-nav-item" onclick="closeMobileNav()">
            <span class="m-icon">💰</span>
            <div class="m-text">
              <strong>Pet Transport Cost Guide</strong>
              <span>Transparent route pricing</span>
            </div>
            <span class="m-arrow">&rarr;</span>
          </a>
          <a href="#packages" class="mobile-nav-item" onclick="closeMobileNav()">
            <span class="m-icon">📦</span>
            <div class="m-text">
              <strong>Grooming Packages &amp; Pricing</strong>
              <span>Dog &amp; Cat packages from ₹800</span>
            </div>
            <span class="m-arrow">&rarr;</span>
          </a>
        </nav>

        <div class="mobile-drawer-footer">
          <a href="#packages" class="btn-primary mobile-drawer-cta" onclick="closeMobileNav()">
            <span>Book A Pet Groomer Now</span>
            <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2.5"><path d="M5 12h14M12 5l7 7-7 7"/></svg>
          </a>
          <div class="mobile-quick-contacts">
            <a href="tel:+919354074426" class="btn-outline mobile-contact-btn">
              <span>📞 Call 93540 74426</span>
            </a>
            <a href="https://wa.me/919354074426?text=Hi%20ThePetNest,%20I%20want%20to%20book%20pet%20grooming%20in%20Delhi%20NCR" class="btn-outline mobile-contact-btn" target="_blank" rel="noopener">
              <span>💬 WhatsApp</span>
            </a>
          </div>
        </div>
      </div>
    </div>
'@

# Replace header nav & mobile drawer in grooming.html
$groomHtml = [System.Text.RegularExpressions.Regex]::Replace($groomHtml, '(?s)<nav class="nav-links" id="desktop-nav".*?</nav>', $groomNav)
$groomHtml = [System.Text.RegularExpressions.Regex]::Replace($groomHtml, '(?s)<a href="pet-shop.html".*?</a>\s*<a href="blog.html".*?</a>\s*<a href="contact.html".*?</a>', '')
$groomHtml = [System.Text.RegularExpressions.Regex]::Replace($groomHtml, '(?s)<div class="mobile-nav-drawer" id="mobile-drawer".*?</div>\s*</div>\s*</header>', "$groomMobileDrawer`n  </header>")

# Clean character encoding glitches in grooming.html
$groomHtml = $groomHtml.Replace('â€™', "'")
$groomHtml = $groomHtml.Replace('â€“', "–")
$groomHtml = $groomHtml.Replace('â€”', "—")
$groomHtml = $groomHtml.Replace('â€œ', '"')
$groomHtml = $groomHtml.Replace('â€ ', '"')
$groomHtml = $groomHtml.Replace('46Â°C', '46°C')
$groomHtml = $groomHtml.Replace('âš™ï¸ ', '⚙️')
$groomHtml = $groomHtml.Replace('âœ¨', '✨')
$groomHtml = $groomHtml.Replace('&#8377;', '₹')

# Add Interactive Booking Card right after Packages in grooming.html if not already present
$quickGroomBookingCard = @'
    <!-- Quick Doorstep Booking Card -->
    <section id="book-online" style="padding: 40px 0; background: linear-gradient(135deg, #FFF4EC 0%, #FFF 100%); border-top: 1px solid var(--border-color); border-bottom: 1px solid var(--border-color);">
      <div class="container" style="max-width: 820px;">
        <div style="background:#FFF; border-radius:var(--radius-lg); border:1px solid var(--border-color); box-shadow:var(--shadow-lg); padding:30px 24px;">
          <div style="text-align:center; margin-bottom:20px;">
            <span class="section-eyebrow">Instant Doorstep Booking</span>
            <h3 style="font-size:1.6rem; font-weight:800; color:var(--text-dark); margin:4px 0 8px 0;">Schedule Your Pet Groomer at Home</h3>
            <p style="font-size:0.88rem; color:var(--text-muted); margin:0;">Zero travel stress. Choose your package and our vetted groomer arrives with a sanitized hospital-grade kit.</p>
          </div>
          <form onsubmit="handleGroomingFormSubmit(event)" style="display:grid; grid-template-columns:1fr; gap:14px;">
            <div style="display:grid; grid-template-columns:repeat(auto-fit, minmax(220px, 1fr)); gap:12px;">
              <div class="form-field-group">
                <label for="form-pet-name">Pet Name &amp; Breed</label>
                <input type="text" id="form-pet-name" placeholder="e.g. Bruno (Shih Tzu)" required style="padding:10px 12px; border:1px solid var(--border-color); border-radius:var(--radius-sm); font-size:0.88rem;">
              </div>
              <div class="form-field-group">
                <label for="form-pet-type">Pet Type</label>
                <select id="form-pet-type" style="padding:10px 12px; border:1px solid var(--border-color); border-radius:var(--radius-sm); font-size:0.88rem;">
                  <option value="Dog">Dog</option>
                  <option value="Cat">Cat</option>
                </select>
              </div>
              <div class="form-field-group">
                <label for="form-package">Select Package</label>
                <select id="form-package" style="padding:10px 12px; border:1px solid var(--border-color); border-radius:var(--radius-sm); font-size:0.88rem;">
                  <option value="Spa Bath & Blow Dry (₹800)">Spa Bath & Blow Dry (₹800)</option>
                  <option value="Bath + Basic Grooming (₹1,199)">Bath + Basic Grooming (₹1,199)</option>
                  <option value="Full Service Grooming (₹1,499)" selected>Full Service Grooming (₹1,499)</option>
                  <option value="Anti-Tick & Flea Treatment (₹1,899)">Anti-Tick & Flea Treatment (₹1,899)</option>
                  <option value="Cat Full Service (₹1,499)">Cat Full Service (₹1,499)</option>
                </select>
              </div>
              <div class="form-field-group">
                <label for="form-city">Your Locality / City</label>
                <input type="text" id="form-city" placeholder="e.g. South Delhi, DLF Phase 5, Noida Sec 62" required style="padding:10px 12px; border:1px solid var(--border-color); border-radius:var(--radius-sm); font-size:0.88rem;">
              </div>
              <div class="form-field-group">
                <label for="form-date">Preferred Date &amp; Time</label>
                <input type="text" id="form-date" placeholder="e.g. Tomorrow 11:00 AM" required style="padding:10px 12px; border:1px solid var(--border-color); border-radius:var(--radius-sm); font-size:0.88rem;">
              </div>
              <div class="form-field-group">
                <label for="form-phone">Your Mobile Number</label>
                <input type="tel" id="form-phone" placeholder="Enter 10-digit number" maxlength="10" required style="padding:10px 12px; border:1px solid var(--border-color); border-radius:var(--radius-sm); font-size:0.88rem;">
              </div>
            </div>
            <button type="submit" class="btn-primary" style="margin-top:6px; padding:12px 20px; font-size:0.95rem; font-weight:800; justify-content:center; width:100%; box-shadow:0 4px 12px rgba(255,120,24,0.35);">
              <span>Book Appointment via WhatsApp →</span>
            </button>
            <div style="text-align:center; font-size:0.76rem; color:var(--text-muted); margin-top:2px;">
              🔒 No advance payment needed &bull; Pay safely after the grooming session is completed.
            </div>
          </form>
        </div>
      </div>
    </section>
'@

if (-not $groomHtml.Contains('id="book-online"')) {
  $groomHtml = $groomHtml.Replace('<!-- Section 4: Sanitized Tools & Hygiene Protocol -->', "$quickGroomBookingCard`n`n    <!-- Section 4: Sanitized Tools & Hygiene Protocol -->")
}

# Update package button links to jump to #book-online or open WhatsApp with package
$groomHtml = $groomHtml.Replace('href="https://thepetnest.com/pet-grooming/book-grooming-session"', 'href="#book-online"')

# Add JS handler for the grooming form
$groomScript = @'
    function handleGroomingFormSubmit(e) {
      e.preventDefault();
      const pet = document.getElementById('form-pet-name').value;
      const type = document.getElementById('form-pet-type').value;
      const pkg = document.getElementById('form-package').value;
      const city = document.getElementById('form-city').value;
      const date = document.getElementById('form-date').value;
      const phone = document.getElementById('form-phone').value;
      const text = `Hi ThePetNest! I would like to book In-Home Grooming:\n- Pet: ${pet} (${type})\n- Package: ${pkg}\n- City/Locality: ${city}\n- Preferred Time: ${date}\n- Phone: ${phone}`;
      window.open(`https://wa.me/919354074426?text=${encodeURIComponent(text)}`, '_blank');
    }
'@

if (-not $groomHtml.Contains('handleGroomingFormSubmit')) {
  $groomHtml = $groomHtml.Replace('function switchPackageTab(tab) {', "$groomScript`n`n    function switchPackageTab(tab) {")
}

# Update footer in grooming.html to include 7 pages
$groomFooterRelocation = @'
        <div class="footer-col">
          <h4>Pet Relocation Services</h4>
          <ul class="footer-links">
            <li><a href="pet-relocation.html" style="color:var(--primary); font-weight:700;">🐾 Pet Relocation Hub</a></li>
            <li><a href="pet-relocation-by-train.html">🚆 Train Travel Guidelines</a></li>
            <li><a href="domestic-pet-transport.html">✈️ Domestic Pet Transport</a></li>
            <li><a href="pet-courier-service.html">🚐 Doorstep Pet Courier</a></li>
            <li><a href="pet-relocation-cost.html">💰 Cost &amp; Price Guide</a></li>
          </ul>
        </div>
'@

$groomTargetFooter = '<div class="footer-col">' + "`n" + '          <h4>Our Services</h4>'
$groomReplacementFooter = $groomFooterRelocation + "`n`n        " + $groomTargetFooter

if (-not $groomHtml.Contains('pet-relocation-by-train.html')) {
  $groomHtml = $groomHtml.Replace($groomTargetFooter, $groomReplacementFooter)
}

[System.IO.File]::WriteAllText($groomingPath, $groomHtml, [System.Text.Encoding]::UTF8)
Write-Host "Updated grooming.html successfully."
