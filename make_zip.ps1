$ErrorActionPreference = 'Stop'
Add-Type -AssemblyName System.IO.Compression.FileSystem

$zipPath = Join-Path (Get-Location) 'site.zip'
if (Test-Path $zipPath) {
  Remove-Item $zipPath -Force
}

$zip = [System.IO.Compression.ZipFile]::Open($zipPath, 'Create')

$files = @(
  'index.html',
  'about.html',
  'contact.html',
  'grooming.html',
  'pet-relocation.html',
  'pet-relocation-by-train.html',
  'domestic-pet-transport.html',
  'pet-courier-service.html',
  'pet-relocation-cost.html',
  'styles.css',
  'vercel.json',
  '.htaccess'
)

foreach ($f in $files) {
  if (Test-Path $f) {
    [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, (Join-Path (Get-Location) $f), $f)
  }
}

# Add images folder
$imgFiles = Get-ChildItem -Path 'images' -Recurse -File
foreach ($img in $imgFiles) {
  $relative = (Resolve-Path -Relative $img.FullName).TrimStart('.\')
  [System.IO.Compression.ZipFileExtensions]::CreateEntryFromFile($zip, $img.FullName, $relative)
}

$zip.Dispose()

$z = Get-Item $zipPath
Write-Host "Created site.zip successfully! Size: $($z.Length) bytes."
