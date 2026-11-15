$zip = Get-Item 'site.zip' -ErrorAction SilentlyContinue
if ($zip) {
  Write-Host "site.zip LastWriteTime: $($zip.LastWriteTime), Length: $($zip.Length)"
}
