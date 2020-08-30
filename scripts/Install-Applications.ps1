. "$PSScriptRoot/Shared.ps1"

$NeoVimPath = "$env:USERPROFILE/scoop/apps/neovim/current/bin"

if (Get-Command "scoop" -ErrorAction SilentlyContinue)
{
  Write-AlreadyInstalled "scoop"
}
else
{
  Write-Host "Installing scoop..."
  Invoke-WebRequest -useb get.scoop.sh | Invoke-Expression
}

if (Get-Command "nvim.exe" -ErrorAction SilentlyContinue)
{
  Write-AlreadyInstalled "NeoVim"
}
else
{
  Write-Host "Installing NeoVim..."
  scoop install neovim
}

# Note: Not using $env:Path, because it doesn't track updates unless you restart the terminal application.
if ([Environment]::GetEnvironmentVariable("Path", "User") -split ";" -notcontains $NeoVimPath)
{
  Write-Host "Adding NeoVim to PATH..."
  [Environment]::SetEnvironmentVariable("Path", [Environment]::GetEnvironmentVariable("Path", "User") + ";$NeoVimPath", "User")
}
else 
{
  Write-Host "NeoVim was already in PATH. Skipping..." -ForegroundColor Green
}

Write-Host "Done. You will need to restart the terminal for these changes to take effect." -ForegroundColor Green