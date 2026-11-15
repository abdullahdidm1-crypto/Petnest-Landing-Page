$tools = @('git', 'vercel', 'gh', 'npm', 'npx', 'node')
foreach ($t in $tools) {
  $cmd = Get-Command $t -ErrorAction SilentlyContinue
  if ($cmd) {
    Write-Host "$t found at: $($cmd.Source)"
  } else {
    Write-Host "$t : NOT in PATH"
  }
}
