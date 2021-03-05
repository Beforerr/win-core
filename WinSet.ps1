sudo Get-WindowsCapability -Online
sudo Remove-WindowsCapability -Online -Name  "Microsoft.Windows.PowerShell.ISE~~~~0.0.1.0"
sudo Remove-WindowsCapability -Online -Name  "App.Support.QuickAssist~~~~0.0.1.0"
sudo Remove-WindowsCapability -Online -Name  "App.StepsRecorder~~~~0.0.1.0"
sudo Remove-WindowsCapability -Online -Name "Microsoft.Windows.MSPaint~~~~0.0.1.0"
sudo Remove-WindowsCapability -Online -Name "Microsoft.Windows.WordPad~~~~0.0.1.0"
sudo Remove-WindowsCapability -Online -Name "Browser.InternetExplorer~~~~0.0.11.0"
sudo Remove-WindowsCapability -Online -Name "Print.Fax.Scan~~~~0.0.1.0"

sudo Add-WindowsCapability -Online -Name "Media.MediaFeaturePack~~~~0.0.1.0"
# sudo Remove-WindowsCapability -Online -Name "Media.MediaFeaturePack~~~~0.0.1.0"


sudo Get-WindowsOptionalFeature -Online
sudo Enable-WindowsOptionalFeature -Online -FeatureName Microsoft-Windows-Subsystem-Linux -NoRestart
sudo Enable-WindowsOptionalFeature -Online -FeatureName  Microsoft-Hyper-V-All -NoRestart

#--- Enable developer mode on the system ---
sudo Get-WindowsDeveloperLicense
sudo Set-ItemProperty -Path HKLM:\Software\Microsoft\Windows\CurrentVersion\AppModelUnlock -Name AllowDevelopmentWithoutDevLicense -Value 1

# 防火墙
sudo netsh advfirewall set currentprofile state off
sudo netsh advfirewall set domainprofile state off
sudo netsh advfirewall set privateprofile state off
sudo netsh advfirewall set publicprofile state off
sudo netsh advfirewall set allprofiles state off


# SSH 设置
sudo Add-WindowsCapability -Online -Name "OpenSSH.Server~~~~0.0.1.0"
sudo Start-Service sshd
sudo Set-Service -Name sshd -StartupType 'Automatic'
Get-NetFirewallRule -Name *ssh*


# 关闭休眠
sudo powercfg.exe /hibernate off

# 关闭密码
netplwiz

# Automatically hide the task bar
powershell -command "&{$p='HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\StuckRects3';$v=(Get-ItemProperty -Path $p).Settings;$v[8]=3;&Set-ItemProperty -Path $p -Name Settings -Value $v;&Stop-Process -f -ProcessName explorer}"

# disable Windows Defender
REG ADD "HKLM\SOFTWARE\Policies\Microsoft\Windows Defender" /v DisableAntiSpyware /t REG_DWORD /d 1 /f