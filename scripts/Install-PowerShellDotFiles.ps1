Write-Host "Installing applications..."
& "$PSScriptRoot/Install-Applications.ps1"

Write-Host "Installing PowerShell configurations..."
& "$PSScriptRoot/Install-PowerShellConfigs.ps1"

Write-Host "Installing Windows Terminal configurations..."
& "$PSScriptRoot/Install-WindowsTerminalConfigs.ps1"

Write-Host "Done. Restart the terminal for all changes to take effect." -ForegroundColor Green