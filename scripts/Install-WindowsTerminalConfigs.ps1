$SettingsDestination = "$env:LocalAppData\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"
$SettingsSource = "$PSScriptRoot/../files/settings.json"

Write-Host "Copying Windows Terminal settings..."

Copy-Item -Path $SettingsSource -Destination $SettingsDestination -Force

Write-Host "Done." -ForegroundColor Green