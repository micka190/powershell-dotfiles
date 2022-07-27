Import-Module posh-git
Import-Module 'C:\dev\vcpkg\vcpkg\scripts\posh-vcpkg'

if ($host.Name -eq 'ConsoleHost')
{
    # Enable unix-like `ls` behavior by literally using Git's packaged `ls` command.
    function ls_git { & 'C:\Program Files\Git\usr\bin\ls' --color=auto -hF $args }
    Set-Alias -Name ls -Value ls_git -Option Private

    # Superclear
    function superclear { clear;Get-Location | ForEach-Object {$_.Path} ;ls_git -A; }
    Set-Alias -Name c -Value superclear -Option Private
}

Invoke-Expression (&starship init powershell)