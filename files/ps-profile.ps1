Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Powerlevel10k-Lean

if ($host.Name -eq 'ConsoleHost')
{
        # Enable unix-like `ls` behavior by literally using Git's packaged `ls` command.
        function ls_git { & 'C:\Program Files\Git\usr\bin\ls' --color=auto -hF $args }
        Set-Alias -Name ls -Value ls_git -Option Private

        # Superclear
        function superclear { clear;Get-Location | ForEach-Object {$_.Path} ;ls_git -A; }
        Set-Alias -Name c -Value superclear -Option Private

        # Edit $PROFILE file
        function edit_profile { nvim $PROFILE }
        Set-Alias -Name prc -Value edit_profile -Option Private
}
