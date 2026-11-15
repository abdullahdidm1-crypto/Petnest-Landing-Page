$pages = @('index.html', 'about.html', 'contact.html', 'grooming.html', 'pet-relocation.html', 'pet-relocation-by-train.html', 'domestic-pet-transport.html', 'pet-courier-service.html', 'pet-relocation-cost.html')

foreach ($p in $pages) {
  $c = [System.IO.File]::ReadAllText($p, [System.Text.Encoding]::UTF8)
  $matches = [System.Text.RegularExpressions.Regex]::Matches($c, '<img[^>]+src="([^"]+)"')
  Write-Host "File $p : $($matches.Count) images found"
  foreach ($m in $matches) {
    $src = $m.Groups[1].Value
    if ($src.StartsWith('images/')) {
      $localPath = $src
      $exists = Test-Path $localPath
      if (-not $exists) {
        Write-Host "  [MISSING LOCAL IMAGE] $src in $p" -ForegroundColor Red
      }
    }
  }
}
Write-Host "Image check complete."
