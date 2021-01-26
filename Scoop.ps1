# Make sure PowerShell 5 (or later, include PowerShell Core) and .NET Framework 4.5 (or later) are installed. Then run:
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop config proxy 127.0.0.1:7890
scoop config proxy 127.0.0.1:10809
scoop config rm proxy

# git Necceassary
scoop install git
scoop install psutils gow

scoop install aria2 
scoop uninstall aria2
# scoop config aria2-enabled false #如果使用代理，需要通过如下命令关闭 aria2
scoop install aria-ng-gui
scoop uninstall aria-ng-gui


# 下面是日常更新软件命令
scoop status
Stop-Process -Name "quicker";sudo scoop update quicker -g;quicker;
sudo scoop update * -g ; scoop update * ; sudo scoop cleanup * -g ; scoop cleanup *
scoop cache rm *
# 重置应用以解决冲突,会重置环境变量,快捷方式等..
sudo scoop reset *
scoop unhold googlechrome-canary;scoop update googlechrome-canary;scoop hold googlechrome-canary;
scoop unhold microsoftedge-beta;scoop update microsoftedge-beta;scoop hold microsoftedge-beta


# 检查潜在的问题..执行下看看使用scoop会有什么问题
# scoop checkup提示装的软件
scoop install wixtoolset
# sudo scoop install innounp lessmsi dark -g
# scoop uninstall lessmsi
# scoop uninstall dark


sudo Add-MpPreference -ExclusionPath 'C:\Users\95695\scoop'
sudo Add-MpPreference -ExclusionPath 'C:\ProgramData\scoop'



scoop bucket known

scoop bucket add scoop-apps https://github.com/kkzzhizhou/scoop-apps
# scoop bucket add extras
# scoop bucket add Java
# scoop bucket add jetbrains
# scoop bucket add versions
# scoop bucket add Ash258 'https://github.com/Ash258/Scoop-Ash258.git'
# scoop bucket add dorado https://github.com/h404bi/dorado 
# scoop bucket add dodorz https://github.com/dodorz/scoop-bucket
# scoop bucket add scoopet https://github.com/integzz/scoopet # 
# scoop bucket rm extras 
# scoop bucket rm Java 
# scoop bucket rm jetbrains
# scoop bucket rm versions
# scoop bucket rm Ash258
# scoop bucket rm dorado 
# scoop bucket rm dodorz 
# scoop bucket rm scoopet
# scoop bucket add scoop-viewer-bucket https://github.com/prezesp/scoop-viewer-bucket.git
# scoop install scoop-viewer

sudo scoop install openssl -g
scoop install scoop-completion
# enable completion in current shell, use absolute path because PowerShell Core not respect $env:choPSModulePath
New-Item -path $profile -itemtype file -force
Write-Output 'Import-Module "$($(Get-Item $(Get-Command scoop).Path).Directory.Parent.FullName)\modules\scoop-completion"' >> $profile


scoop install clash-for-windows-portable;scoop hold clash-for-windows-portable
scoop install quicker

scoop install typora sumatraPDF pandoc
scoop install phraseexpress
scoop install screenoff 
scoop install wps-cn
scoop hold wps-cn

# 浏览器
# scoop install firefox-beta
scoop install thunderbird-portable firefox-developer microsoftedge-beta googlechrome-canary speedyfox

scoop hold firefox-developer microsoftedge-beta googlechrome-canary
scoop uninstall firefox-beta



# 娱乐
scoop install aimp eartrumpet
scoop install spotify neteasemusic listen1desktop
# scoop install foobar2000-portable
# scoop install obs-studio
scoop hold aimp
# scoop hold obs-studio
scoop uninstall obs-studio
scoop uninstall listen1desktop
scoop uninstall foobar2000-portable

# 视频
scoop install vlc potplayer 
scoop install madvr 
sudo ~\scoop\apps\madvr\current\install.bat
sudo scoop install lavfilters -g
sudo C:\ProgramData\scoop\apps\lavfilters\current\install_audio.bat
sudo C:\ProgramData\scoop\apps\lavfilters\current\install_splitter.bat
sudo C:\ProgramData\scoop\apps\lavfilters\current\install_video.bat
# scoop install mediainfo-gui
# scoop uninstall mediainfo-gui

# 社交
scoop install TIM
scoop install wechat
scoop install wechatwork
# scoop bucket add sushi https://github.com/kidonng/sushi
# scoop install tencent-meeting
# scoop uninstall tencent-meeting


# 下载工具
# scoop install transmission
scoop install aria-ng-gui
# scoop install you-get
scoop install freedownloadmanager
scoop hold freedownloadmanager


# 编程
scoop install zeal
scoop install windows-terminal
scoop install vim vscode-portable notepadplusplus
# Make vscode portable
mv $env:USERPROFILE\.vscode\extensions $env:USERPROFILE\scoop\persist\vscode-portable\data\extensions
mv $env:APPDATA\Code  $env:USERPROFILE\scoop\persist\vscode-portable\data\user-data
sudo ~\scoop\apps\vscode\current\vscode-install-context.reg
scoop install github
sudo scoop install JetBrainsMono-NF
scoop install cascadia-code-pl

scoop uninstall vim

scoop install powershell-preview
# 1. 安装 PSReadline 包，该插件可以让命令行很好用，类似 zsh
Install-Module -Name PSReadLine -AllowPrerelease -Force
# 2. 安装 posh-git 包，让你的 git 更好用
Install-Module posh-git -Scope CurrentUser -AllowClobber
# 3. 安装 oh-my-posh 包，让你的命令行更酷炫、优雅
Install-Module oh-my-posh -Scope CurrentUser -AllowPrerelease

sudo scoop uninstall powershell-preview -g
# sudo scoop install vcredist2019 -g
# sudo scoop uninstall vcredist2019 -g
# sudo scoop install vcredist -g
# sudo scoop uninstall vcredist vcredist2005 vcredist2008 vcredist2010 vcredist2012 vcredist2013 -g
# scoop install alacritty
# scoop uninstall alacritty

# Python
# sudo scoop install python -g
# sudo C:\ProgramData\scoop\apps\python\current\install-pep-514.reg
# sudo scoop uninstall python -g
# sudo scoop install anaconda3 -g
# $path = [Environment]::GetEnvironmentVariable('Path', 'User')
# $newpath = $path + ';C:\ProgramData\Anaconda3\;C:\ProgramData\Anaconda3\Scripts\;C:\ProgramData\Anaconda3\Library'
# [Environment]::SetEnvironmentVariable("Path", $newpath, 'User')
sudo scoop install miniconda3 -g
Set-Variable CONDA_ENVS_PATH=~/.conda/envs
$path = [Environment]::GetEnvironmentVariable('Path', 'User')
$newpath = $path + ';C:\tools\miniconda3\;C:\tools\miniconda3\Scripts\;C:\tools\miniconda3\Library\bin\'
[Environment]::SetEnvironmentVariable("Path", $newpath, 'User')

scoop install PyCharm-Professional
scoop hold PyCharm-Professional

# Java
scoop install openjdk
scoop hold openjdk
scoop install eclipse-java
scoop hold eclipse-java
scoop install maven
scoop hold maven

# Other Languages
scoop install php
scoop install perl
scoop install julia
# scoop install nodejs
scoop install nodejs-lts
scoop install composer
scoop hold nodejs-lts nodejs
scoop hold php perl composer 

scoop unhold nodejs-lts nodejs
scoop uninstall php perl composer nodejs 
scoop uninstall julia


# linux
sudo Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux
sudo scoop install ArchWSL -g
sudo scoop install wsl-terminal -g
scoop install docker

sudo scoop uninstall ArchWSL -g
sudo scoop uninstall wsl-terminal -g



# 生产力
scoop install wget autojump
scoop uninstall wget autojump



# 工具
scoop install qbittorrent-portable
scoop install winscp nextcloud synctrayzor
scoop install anydesk 
scoop install everything
scoop install teamviewers
scoop install WinDirStat
scoop install spacesniffer
# scoop uninstall spacesniffer
scoop install rufus

scoop uninstall recuva
scoop uninstall anydesk

# 娱乐
# scoop install steam
# scoop uninstall steam

# aria2 在 Scoop 中默认开启
scoop config aria2-enabled true
scoop config aria2-enabled false
# 关于以下参数的作用，详见aria2的相关资料
scoop config aria2-retry-wait 4
scoop config aria2-split 16
scoop config aria2-max-connection-per-server 16
scoop config aria2-min-split-size 4M



# PowerShell
$MyAlias="
Set-Alias -Name c -Value code
Set-Alias -Name g -Value git
Set-Alias -Name s -Value scoop
Set-Alias -Name py -Value python
Set-Alias -Name list -Value Get-ChildItem
Function Git-Status {git status}
Set-Alias -Name gs -Value Git-Status
Function Scoop-Install {scoop install $args[0]}
Set-Alias -Name sin -Value Scoop-Install
Function Scoop-Update {scoop update $args[0]}
Set-Alias -Name sup -Value Scoop-Update"
$MyAlias | Out-File -Append $PROFILE
