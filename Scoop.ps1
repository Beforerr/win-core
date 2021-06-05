# Make sure PowerShell 5 (or later, include PowerShell Core) and .NET Framework 4.5 (or later) are installed. Then run:
Invoke-Expression (New-Object System.Net.WebClient).DownloadString('https://get.scoop.sh')

scoop config proxy 127.0.0.1:7890
scoop config proxy 192.168.124.7:7890
scoop config proxy 127.0.0.1:10809
scoop config rm proxy


# Necceassary
scoop install git openssl hub gh
scoop install psutils

sudo Add-MpPreference -ExclusionPath ~\scoop
sudo Add-MpPreference -ExclusionPath 'C:\ProgramData\scoop'


# 下面是日常更新软件命令
scoop status
Stop-Process -Name "quicker";sudo scoop update quicker -g;quicker;
sudo scoop update * -g ; scoop update * ; sudo scoop cleanup * -g ; scoop cleanup *
scoop cache rm *
# 重置应用以解决冲突,会重置环境变量,快捷方式等..
sudo scoop reset *
$edge = "microsoft-edge-dev";
$google = "googlechrome-dev";
$firefox = "firefox-developer"
scoop unhold $edge;scoop update $edge;scoop hold $edge;
scoop unhold $google;scoop update $google;scoop hold $google;
scoop unhold $firefox;scoop update $firefox;scoop hold $firefox;



scoop bucket known
scoop bucket add extras
scoop bucket add scoop-apps https://github.com/kkzzhizhou/scoop-apps
scoop bucket add raresoft https://github.com/L-Trump/scoop-raresoft

scoop bucket rm scoop-apps

scoop install scoop-completion


scoop install clash-for-windows-portable;scoop hold clash-for-windows-portable
scoop install quicker
sudo scoop install listary-beta everything-lite
scoop install peazip irfanview

scoop install typora sumatrapdf-dev #	foxit-reader
scoop install calibre
scoop install phraseexpress
scoop install screenoff flux


scoop install powershell-preview
# 1. 安装 PSReadline 包，该插件可以让命令行很好用，类似 zsh
Install-Module -Name PSReadLine -AllowPrerelease -Force
# 2. 安装 posh-git 包，让你的 git 更好用
Install-Module posh-git -Scope CurrentUser -AllowClobber
# 3. 安装 oh-my-posh 包，让你的命令行更酷炫、优雅
# scoop install oh-my-posh3
Install-Module oh-my-posh -Scope CurrentUser -AllowPrerelease
# Uninstall-Module oh-my-posh
Install-Module -Name Terminal-Icons -Repository PSGallery -Confirm
Update-Module

sudo scoop uninstall powershell-preview
# sudo scoop install vcredist2019 -g
# sudo scoop uninstall vcredist2019 -g
# sudo scoop install vcredist -g
# sudo scoop uninstall vcredist vcredist2005 vcredist2008 vcredist2010 vcredist2012 vcredist2013 -g


# 浏览器
# scoop install firefox-beta
scoop install thunderbird-portable firefox-developer microsoft-edge-dev googlechrome-dev speedyfox
scoop hold firefox-developer microsoft-edge-dev googlechrome-dev thunderbird-portable
scoop uninstall firefox-beta


# 娱乐
scoop install aimp eartrumpet
scoop install neteasemusic listen1desktop
# scoop install spotify 
# scoop install foobar2000-portable
# scoop install obs-studio
scoop hold aimp
# scoop hold obs-studio
# scoop uninstall obs-studio
# scoop uninstall listen1desktop
# scoop uninstall foobar2000-portable

# 视频
scoop install ProjectEye
scoop install vlc-portapps potplayer 
scoop install madvr 
sudo ~\scoop\apps\madvr\current\install.bat
sudo scoop install lavfilters -g
sudo C:\ProgramData\scoop\apps\lavfilters\current\install_audio.bat
sudo C:\ProgramData\scoop\apps\lavfilters\current\install_splitter.bat
sudo C:\ProgramData\scoop\apps\lavfilters\current\install_video.bat
scoop install xysubfilter
# scoop install mediainfo-gui
# scoop uninstall mediainfo-gui

# 社交
scoop install TIM
scoop install wechat_dodorz telegram -s
# scoop install wechatwork
# scoop install qtox-portable
# scoop bucket add sushi https://github.com/kidonng/sushi
# scoop install tencent-meeting
# scoop uninstall tencent-meeting


# 下载工具
# scoop install transmission
# scoop install aria-ng-gui
scoop install qbittorrent-portable
# scoop install xdm
# scoop install you-get
# scoop install freedownloadmanager
# scoop hold freedownloadmanager



# 编程环境
scoop install zeal
scoop install WindowsTerminal-preview
scoop install vim vscode-portable notepadplusplus
# Make vscode portable
mv $env:USERPROFILE\.vscode\extensions $env:USERPROFILE\scoop\persist\vscode-portable\data\extensions
mv $env:APPDATA\Code  $env:USERPROFILE\scoop\persist\vscode-portable\data\user-data
sudo $env:USERPROFILE\scoop\apps\vscode-portable\current\vscode-install-context.reg
scoop install JetBrainsMono-NF
sudo scoop install cascadia-code-pl -g

scoop uninstall vim


# Commandline 
scoop install bat less --skip
scoop install grep
scoop install wget

# Python
# $path = [Environment]::GetEnvironmentVariable('Path', 'User')
# $newpath = $path + ';C:\ProgramData\Anaconda3\;C:\ProgramData\Anaconda3\Scripts\;C:\ProgramData\Anaconda3\Library'
# [Environment]::SetEnvironmentVariable("Path", $newpath, 'User')
sudo scoop install miniconda3
 'channels:
>>   - defaults
>> show_channel_urls: true
>> default_channels:
>>   - https://mirrors.bfsu.edu.cn/anaconda/pkgs/main
>>   - https://mirrors.bfsu.edu.cn/anaconda/pkgs/r
>>   - https://mirrors.bfsu.edu.cn/anaconda/pkgs/msys2
>> custom_channels:
>>   conda-forge: https://mirrors.bfsu.edu.cn/anaconda/cloud
>>   msys2: https://mirrors.bfsu.edu.cn/anaconda/cloud
>>   bioconda: https://mirrors.bfsu.edu.cn/anaconda/cloud
>>   menpo: https://mirrors.bfsu.edu.cn/anaconda/cloud
>>   pytorch: https://mirrors.bfsu.edu.cn/anaconda/cloud
>>   simpleitk: https://mirrors.bfsu.edu.cn/anaconda/cloud' >> .condarc
conda clean -i
pip config set global.proxy localhost:10809
pip config set global.index-url http://mirrors.aliyun.com/pypi/simple/
pip config set install.trusted-host mirrors.aliyun.com
conda install -n root -c pscondaenvs pscondaenvs -y
conda init powershell

scoop install PyCharm-Professional-EAP-portable
scoop hold PyCharm-Professional-EAP-portable
scoop install CLion-EAP-portable
scoop hold CLion-EAP-portable

# Java
scoop install openjdk
scoop hold openjdk
scoop install maven
scoop hold maven
scoop install eclipse-java
scoop hold eclipse-java

# sudo scoop install vcredist2019 -g
mkdir C:\src && cd C:\src && git clone https://github.com/microsoft/vcpkg
.\vcpkg\bootstrap-vcpkg.bat && .\vcpkg integrate powershell
sudo .\vcpkg.exe integrate install
# Other Languages
scoop install ruby go nodejs-lts
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


scoop install dotnet-sdk-preview

# linux
sudo dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
sudo dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
# sudo Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
# sudo Enable-WindowsOptionalFeature -Online -FeatureName  Microsoft-Hyper-V-All -NoRestart
# scoop install cgywin
# sudo scoop install ArchWSL -g 
# scoop install wsl-ubuntu2004
scoop install docker

# sudo scoop uninstall ArchWSL -g



# 工具
scoop install Eudic_dodorz -s
scoop install winscp
scoop install GeekUninstaller-Portable
scoop install spacesniffer
scoop install draw.io
scoop install nextcloud synctrayzor
scoop install anydesk 
scoop install teamviewers
scoop install WinDirStat
scoop install DismPlusPlus-Portable
# scoop uninstall spacesniffer
scoop install rufus
scoop install speedtest-cli
scoop install Microsoft.NETCoreRuntime-Install powertoys -y

scoop uninstall recuva
scoop uninstall anydesk



scoop install zotero
scoop install qiqqa







# 娱乐
# scoop install steam
# scoop uninstall steam

scoop install aria2
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
