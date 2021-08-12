mkdir "$HOME\OneDrive - mail.ustc.edu.cn\zijin"
New-Item -Path "$HOME\OneDrive - mail.ustc.edu.cn\zijin\Core" -ItemType SymbolicLink -Value $HOME\Core

mkdir "$HOME\OneDrive - mail.ustc.edu.cn\zijin\Documents"
New-Item -Path "$HOME\OneDrive - mail.ustc.edu.cn\zijin\Documents\SiYuan" -ItemType SymbolicLink -Value "$HOME\Documents\SiYuan"



$DataHome = "D:"
## Music
New-Item -Path "$HOME\OneDrive - mail.ustc.edu.cn\Music" -ItemType SymbolicLink -Value "$DataHome\Music"
New-Item -Path "$HOME\OneDrive - mail.ustc.edu.cn\Videos" -ItemType SymbolicLink -Value "$DataHome\Videos"

New-Item -Path "$HOME\Downloads" -ItemType SymbolicLink -Value "$DataHome\Downloads"
# New-Item -Path "$HOME\OneDrive - mail.ustc.edu.cn\Downloads" -ItemType SymbolicLink -Value "$DataHome\Downloads"



$DataHome = "D:"
New-Item -Path "$HOME\OneDrive - mail.ustc.edu.cn\Sync" -ItemType SymbolicLink -Value "$DataHome\Sync"

New-Item -Path "$HOME\OneDrive - mail.ustc.edu.cn\Research" -ItemType SymbolicLink -Value "$DataHome\Sync"

mkdir "$HOME\OneDrive - mail.ustc.edu.cn\zijin\APPDATA\Zotero"
New-Item -Path "$HOME\OneDrive - mail.ustc.edu.cn\zijin\APPDATA\Zotero\Zotero" -ItemType SymbolicLink -Value "$env:APPDATA\Zotero\Zotero"

# Nutstore



###

$DataHome = "D:"
## Software
New-Item -Path "$DataHome\Software" -ItemType SymbolicLink -Value "C:\Software"


## Library
New-Item -Path "$HOME\OneDrive - mail.ustc.edu.cn\Library" -ItemType SymbolicLink -Value "$DataHome\Library"

## SiYuan
New-Item -Path "$HOME\Documents\SiYuan" -ItemType SymbolicLink -Value "$HOME\OneDrive - mail.ustc.edu.cn\zijin\Documents\SiYuan"
New-Item -Path "$DataHome\Sync" -ItemType SymbolicLink -Value "$HOME\OneDrive - mail.ustc.edu.cn\Sync"

## Zotero\storage
New-Item -Path "$HOME\OneDrive - mail.ustc.edu.cn\Sync\Zotero\storage" -ItemType SymbolicLink -Value "$HOME\Zotero\storage"



# Nutstore
New-Item -Path "$HOME\Core" -ItemType SymbolicLink -Value "$HOME\Documents\Nutstore\Core" -Force
## PowerShell_profile
New-Item -Path "$HOME\Documents\PowerShell\Microsoft.PowerShell_profile.ps1" -ItemType SymbolicLink -Value "$HOME\Core\Winset\Microsoft.PowerShell_profile.ps1" -Force

New-Item -Path "$HOME\Documents\SiYuan\data" -ItemType SymbolicLink -Value "$HOME\Documents\Nutstore\SiYuanData" -Force






# Dropbox
New-Item -Path "$HOME\Dropbox\Documents\SiYuan" -ItemType Junction -Value "$HOME\Documents\SiYuan\data" -Force