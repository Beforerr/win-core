# Produce UTF-8 by default
# https://news.ycombinator.com/item?id=12991690
$PSDefaultParameterValues["Out-File:Encoding"] = "utf8"

# Proper history etc
# Import-Module posh-git
# Import-Module oh-my-posh
# Set-PoshPrompt -Theme pure

# $key = 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont'
# Set-ItemProperty -Path $key -Name '000' -Value 'CaskaydiaCove Nerd Font' 
# Import-Module -Name Terminal-Icons

# Import-Module PSReadLine
Import-Module ~\Core\WinSet\PSReadLine.psm1
Import-Module ~\Core\WinSet\Alias.psm1 -NoClobber -DisableNameChecking

Import-Module ~\scoop\modules\scoop-completion
Invoke-Expression (&scoop-search --hook)

# Import
## Import-Module DockerCompletion