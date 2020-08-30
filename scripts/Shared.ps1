function Write-AlreadyInstalled($ModuleName)
{
  Write-Host $ModuleName -ForegroundColor Cyan -NoNewline
  Write-Host " is already installed. Skipping installation..." -ForegroundColor Green
}