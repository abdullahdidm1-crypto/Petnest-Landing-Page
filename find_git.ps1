$paths = @(
  "$env:LOCALAPPDATA\GitHubDesktop\app-*\resources\app\git\cmd\git.exe",
  "$env:LOCALAPPDATA\Programs\Git\bin\git.exe",
  "$env:ProgramFiles\Git\bin\git.exe",
  "$env:ProgramFiles(x86)\Git\bin\git.exe"
)

foreach ($p in $paths) {
  $found = Get-Item $p -ErrorAction SilentlyContinue
  if ($found) {
    Write-Host "Found Git at: $($found.FullName)"
  }
}
