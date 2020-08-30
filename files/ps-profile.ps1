Import-Module posh-git
Import-Module oh-my-posh
Set-Theme Powerlevel10k-Lean

# Get Git's `ls` output.
if ($host.Name -eq 'ConsoleHost')
{
    function ls_git { & 'C:\Program Files\Git\usr\bin\ls' --color=auto -hF $args }
    Set-Alias -Name ls -Value ls_git -Option Private
}