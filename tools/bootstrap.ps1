Write-Host ""
Write-Host "🚀 Git commit message: Start"
if (Get-Command git -ErrorAction SilentlyContinue) {
  git config commit.template tools/git/message
  Write-Host "🎉 Git commit message: git config commit.template is $((Get-Location).Path)/$(git config commit.template)"
  Write-Host "✅ Git commit message: Success"
} else {
  Write-Host "⚠️ Git commit message: Skip the git command as it could not be found."
}
Write-Host "🚀 Git commit message: Finished"

Write-Host ""
Write-Host "🚀 Version Management: Start"
if (Get-Command fvm -ErrorAction SilentlyContinue) {
  fvm install
} else {
  Write-Host "⚠️ Version Management: The process has been skipped as the fvm command could not be found."
}
Write-Host "🚀 Version Management: Finished"

# FIXME: ここで PATH を通さなくても実行できるようにしたい
$env:PATH = $env:PATH + ";" + "$env:USERPROFILE\.pub-cache\bin"

if (Get-Command melos -ErrorAction SilentlyContinue) {
  Write-Host "🔒️ Melos: Bootstrap."
  melos bs
} else {
  Write-Host "⚠️ Melos: The process has been skipped as the melos command could not be found."
}

Write-Host "🚀 Melos: Finished"