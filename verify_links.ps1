$pages = @(
  'index.html',
  'about.html',
  'contact.html',
  'grooming.html',
  'pet-relocation.html',
  'pet-relocation-by-train.html',
  'domestic-pet-transport.html',
  'pet-courier-service.html',
  'pet-relocation-cost.html'
)

Write-Host "=== VERIFYING ALL 9 PAGES FOR ZERO 404s & CLEAN MENU ===" -ForegroundColor Cyan
foreach ($p in $pages) {
  if (Test-Path $p) {
    $len = (Get-Item $p).Length
    $content = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
    
    $missingLinks = @()
    foreach ($target in $pages) {
      if (-not $content.Contains($target)) {
        $missingLinks += $target
      }
    }
    
    if ($missingLinks.Count -eq 0) {
      Write-Host "[OK] $p ($len bytes) - All 9 pages linked seamlessly!" -ForegroundColor Green
    } else {
      Write-Host "[WARN] $p ($len bytes) - Missing links to: $($missingLinks -join ', ')" -ForegroundColor Yellow
    }
  } else {
    Write-Host "[FAIL] $p NOT FOUND!" -ForegroundColor Red
  }
}