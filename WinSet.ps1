
# SSH 设置
sudo Get-WindowsCapability -Online | ? Name -like 'OpenSSH*'
sudo Add-WindowsCapability -Online -Name OpenSSH.Server
sudo Start-Service sshd
sudo Set-Service -Name sshd -StartupType 'Automatic'
Get-NetFirewallRule -Name *ssh*