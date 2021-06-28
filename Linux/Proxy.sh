export http_proxy='127.0.0.1:10809'
export https_proxy='127.0.0.1:10809'
unset http_proxy
unset https_proxy
export http_proxy='114.214.238.187:10809'
export https_proxy='114.214.238.187:10809'
# $user = "ustccs"
# $targetmachine = "202.38.92.144"
# scp ~\Downloads\Compressed\v2ray-linux-64.zip ${user}@${targetmachine}:
unzip v2ray-linux-64.zip -d v2ray
sudo mv ~/v2ray /usr/local/v2ray
cd /usr/local/v2ray/
sudo mkdir /etc/v2ray
# scp ~\config.json ${user}@${targetmachine}:
sudo /usr/local/v2ray/v2ray --config=/etc/v2ray/config.json
# Uninstall
sudo rm -rf /usr/local/v2ray 
sudo rm -rf /etc/v2ray
rm ~/v2ray-linux-64.zip




wget https://github.com/Dreamacro/clash/releases/download/v1.5.0/clash-linux-amd64-v1.5.0.gz
scp ~\clash-linux-amd64-v1.5.0.gz ${user}@${targetmachine}:
gzip -d clash-linux-amd64-v1.5.0
chmod +x clash-linux-amd64-v1.5.0
./clash-linux-amd64-v1.5.0 -v

wget -O config.yml "https://dingyue.suying666.info/link/0uWMWsiYxqnGsmyb?clash=1"
scp ~\config.yml ${user}@${targetmachine}:
mv config.yml ~/.config/clash/


sudo mv ssr /usr/local/bin/



cat <<EOF | sudo tee ~/.local/share/shadowsocksr/config.json
    {
      "server": "linode-zy.ddns-only.xyz",
      "local_address": "127.0.0.1",
      "local_port": 1080,
      "timeout": 300,
      "workers": 1,
      "server_port": 51193,
      "password": "Cskw6d",
      "method": "rc4-md5",
      "obfs": "tls1.2_ticket_auth",
      "obfs_param": "b72ce150891.microsoft.com",
      "protocol": "auth_aes128_md5",
      "protocol_param": "150891:jbgSwV"
    }
EOF
sudo apt install jq proxychains4 -y
ssr restart
export http_proxy='127.0.0.1:1080'
export https_proxy='127.0.0.1:1080'


