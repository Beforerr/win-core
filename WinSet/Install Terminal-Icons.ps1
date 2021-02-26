### Install Terminal-Icons (get LiterationMono NF Nerd font, install, add required Concole registry key, then install Modules)
$url = 'https://github.com/haasosaurus/nerd-fonts/raw/regen-mono-font-fix/patched-fonts/LiberationMono/complete/Literation%20Mono%20Nerd%20Font%20Complete%20Mono%20Windows%20Compatible.ttf'
$name = "LiterationMono NF"
$file = "$($env:TEMP)\$($name).ttf"
Start-BitsTransfer -Source $url -Destination $file   # Download the font

$Install = $true  # $false to uninstall (or 1 / 0)
$FontsFolder = (New-Object -ComObject Shell.Application).Namespace(0x14)   # Must use Namespace part or will not install properly
$filename = (Get-ChildItem $file).Name
$filepath = (Get-ChildItem $file).FullName
$target = "C:\Windows\Fonts\$($filename)"

If (Test-Path $target -PathType Any) { Remove-Item $target -Recurse -Force } # UnInstall Font
# Following action performs the install, requires user to click on yes
If ((-not(Test-Path $target -PathType Container)) -and ($Install -eq $true)) { $FontsFolder.CopyHere($filepath, 16) }

# Need to set this for console
$key = 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Console\TrueTypeFont'
sudo Set-ItemProperty -Path $key -Name '000' -Value $name

# Following are all required to enable the Terminal-Icons 'DevBlackOps' Theme
# Install-PackageProvider -Name NuGet -MinimumVersion 2.8.5.201 -Force   # Always need this, required for all Modules
Set-PSRepository -Name 'PSGallery' -InstallationPolicy Trusted   # Set Microsoft PowerShell Gallery to 'Trusted'
Install-Module Terminal-Icons -Scope CurrentUser
Import-Module Terminal-Icons
Install-Module WindowsConsoleFonts
Set-ConsoleFont $name
Set-TerminalIconsColorTheme -Name DevBlackOps   # After the above are setup, can add just this line to $Profile to always load DevBlackOps