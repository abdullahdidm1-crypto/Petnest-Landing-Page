$res = Select-String -Path *.html, *.json, *.txt, *.md -Pattern 'github\.com' -ErrorAction SilentlyContinue
if ($res) {
  $res | Select-Object Path, LineNumber, Line | Format-Table -Wrap
} else {
  Write-Host "No github repo url found in workspace files."
}
