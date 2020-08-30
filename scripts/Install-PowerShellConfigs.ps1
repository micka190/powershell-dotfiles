. "$PSScriptRoot/Shared.ps1"

if (Get-Module -ListAvailable -Name "posh-git") 
{
  Write-AlreadyInstalled "posh-git"
}
else
{
  Write-Host "Installing posh-git module..."
  Install-Module posh-git -Scope CurrentUser
}

if (Get-Module -ListAvailable -Name "oh-my-posh") {
  Write-AlreadyInstalled "oh-my-posh"
else
{
  Write-Host "Installing oh-my-posh module..."
  Install-Module oh-my-posh -Scope CurrentUser
}

if (Get-Module -ListAvailable -Name "PSReadLine") {
  Write-AlreadyInstalled "PSReadLine"
}
else
{
  Write-Host "Installing PSReadLine module..."
  Install-Module -Name PSReadLine -Scope CurrentUser -Force -SkipPublisherCheck
}

Write-Host "Copying profile to $PROFILE"

Copy-Item -Path "$PSScriptRoot/../files/ps-profile.ps1" -Destination $PROFILE -Force

Write-Host "Done. You should restart PowerShell for changes to take effect." -ForegroundColor Green