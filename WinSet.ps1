
# SSH 设置
sudo Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
sudo Add-WindowsCapability -Online -Name OpenSSH.Server
sudo Start-Service sshd
sudo Set-Service -Name sshd -StartupType 'Automatic'
Get-NetFirewallRule -Name *ssh*

# 关闭休眠
sudo powercfg.exe /hibernate off

# 关闭密码
netplwiz