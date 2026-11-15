$ErrorActionPreference = 'Stop'

# Ensure directories
if (-not (Test-Path 'images\optimized')) {
  New-Item -ItemType Directory -Path 'images\optimized' -Force | Out-Null
}

# Source images available:
# images/hero-dog-grooming-delhi.jpg
# images/sanitized-pet-grooming-kit.jpg
# images/shih-tzu-haircut-styling-delhi.jpg
# images/deshedding-brushing-treatment-delhi.jpg
# images/cat-grooming-at-home-delhi.jpg
# images/dog-spa-bath-massage-delhi.jpg

$heroImg = 'images\hero-dog-grooming-delhi.jpg'
$kitImg = 'images\sanitized-pet-grooming-kit.jpg'
$catImg = 'images\cat-grooming-at-home-delhi.jpg'
$spaImg = 'images\dog-spa-bath-massage-delhi.jpg'
$brushImg = 'images\deshedding-brushing-treatment-delhi.jpg'

# 1. Populate images/optimized/
Copy-Item $heroImg 'images\optimized\pet-relocation-services-hero.png' -Force
Copy-Item $spaImg 'images\optimized\domestic-pet-relocation.png' -Force
Copy-Item $catImg 'images\optimized\cat-relocation-services.png' -Force
Copy-Item $brushImg 'images\optimized\process-live-gps-tracking.png' -Force

# 2. Populate domestic-pet-transport.html images
Copy-Item $heroImg 'images\pet-transport-service-hero.webp' -Force
Copy-Item $spaImg 'images\pet-transport-by-flight.webp' -Force
Copy-Item $kitImg 'images\pet-transport-by-train.webp' -Force
Copy-Item $brushImg 'images\pet-transport-by-road.webp' -Force
Copy-Item $heroImg 'images\domestic-pet-transport-routes.webp' -Force
Copy-Item $kitImg 'images\domestic-process-1-route-consultation.webp' -Force
Copy-Item $spaImg 'images\domestic-process-2-veterinary-clearance.webp' -Force
Copy-Item $brushImg 'images\domestic-process-3-crate-preparation.webp' -Force
Copy-Item $heroImg 'images\domestic-process-4-doorstep-transit.webp' -Force
Copy-Item $catImg 'images\domestic-process-5-home-delivery.webp' -Force

# 3. Populate pet-courier-service.html images
Copy-Item $heroImg 'images\pet-courier-service-hero.jpg' -Force
Copy-Item $catImg 'images\pet-courier-doorstep-pickup.jpg' -Force
Copy-Item $kitImg 'images\pet-courier-crate-setup.jpg' -Force
Copy-Item $brushImg 'images\pet-courier-transit-updates.jpg' -Force
Copy-Item $spaImg 'images\pet-courier-doorstep-delivery.jpg' -Force

# 4. Generate SVG illustrations for pet courier services
function Create-Svg($path, $title, $iconText, $bgColor) {
  $svgContent = @"
<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 400 250" width="100%" height="100%">
  <defs>
    <linearGradient id="grad" x1="0%" y1="0%" x2="100%" y2="100%">
      <stop offset="0%" style="stop-color:$bgColor;stop-opacity:1" />
      <stop offset="100%" style="stop-color:#0F172A;stop-opacity:0.9" />
    </linearGradient>
  </defs>
  <rect width="400" height="250" rx="16" fill="url(#grad)" />
  <circle cx="200" cy="100" r="45" fill="rgba(255,255,255,0.15)" />
  <text x="200" y="112" font-size="44" text-anchor="middle" fill="#FFFFFF">$iconText</text>
  <text x="200" y="175" font-family="'Plus Jakarta Sans', sans-serif" font-size="16" font-weight="bold" text-anchor="middle" fill="#FFFFFF">$title</text>
  <text x="200" y="200" font-family="'Plus Jakarta Sans', sans-serif" font-size="12" text-anchor="middle" fill="#E2E8F0">ThePetNest Verified Travel</text>
</svg>
"@
  [System.IO.File]::WriteAllText($path, $svgContent, [System.Text.Encoding]::UTF8)
}

Create-Svg 'images\service-vet-check-paperwork.svg' 'Veterinary Check &amp; Paperwork' '🩺' '#2563EB'
Create-Svg 'images\service-post-delivery-settling.svg' 'Doorstep Settling &amp; Water Care' '🏡' '#16A34A'
Create-Svg 'images\local-city-pet-delivery.svg' 'Local City Pet Delivery' '🚐' '#EA580C'
Create-Svg 'images\intercity-pet-courier.svg' 'Intercity Long-Haul Courier' '🛣️' '#7C3AED'
Create-Svg 'images\safe-pet-courier-banner.svg' 'Safe Climate-Controlled Travel' '🐾' '#FF7818'
Create-Svg 'images\pet-courier-service-og.svg' 'ThePetNest Pet Courier Service' '🚐' '#FF7818'

Write-Host "All missing local images and vector SVGs generated successfully!"
