Set-Alias -Name b -Value bat
Set-Alias -Name c -Value code
Set-Alias -Name n -Value notepad++
Set-Alias -Name py -Value python
Set-Alias -Name list -Value Get-ChildItem
Set-Alias -Name eval -Value invoke-expression
New-Alias which get-command

# Should really be name=value like Unix version of export but not a big deal
function open($file) {
  invoke-item $file
}

function export($name, $value) {
	set-item -force -path "env:$name" -value $value;
}

function pkill($name) {
	get-process $name -ErrorAction SilentlyContinue | stop-process
}

function pgrep($name) {
	get-process $name
}

function reboot {
	shutdown /r /t 0
}

function Rename-Extension($newExtension){
  Rename-Item -NewName { [System.IO.Path]::ChangeExtension($_.Name, $newExtension) }
}


# Git
Set-Alias -Name g -Value git

Function Git-Status {
	git status
}
Set-Alias -Name gs -Value Git-Status

# Scoop
Set-Alias -Name s -Value scoop

Function Scoop-Status{
	scoop update;
	scoop status;
}
Set-Alias -Name ss -Value Scoop-Status

Function Scoop-Update-All {
	Stop-Process -Name "quicker";sudo scoop update quicker;quicker;
	scoop update *; sudo scoop update * -g;
	scoop cache rm *; scoop cleanup *;
	scoop status;
}
Set-Alias -Name sua -Value Scoop-Update-All

Function Scoop-Install {scoop install $args[0]}
Set-Alias -Name sin -Value Scoop-Install

Function Scoop-Update {
	scoop unhold $args[0];scoop update $args[0] -s;scoop hold $args[0]
}
Set-Alias -Name sup -Value Scoop-Update

Function Scoop-Update-Browser{
	$edge = "microsoft-edge-dev";
	$google = "googlechrome-dev";
	$firefox = "firefox-developer";
	sup $edge; sup $google; sup $firefox
}
Set-Alias -Name sub -Value Scoop-Update-Browser