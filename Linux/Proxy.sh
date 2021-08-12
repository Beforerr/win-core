# Clash
cd && mkdir clash && cd clash
wget https://pd.zwc365.com/seturl/https://github.com/Dreamacro/clash/releases/download/v1.6.0/clash-linux-amd64-v1.6.0.gz -O clash.gz
wget -O ~/.config/clash/config.yaml "https://dingyue.suying666.info/link/0uWMWsiYxqnGsmyb?clash=1&log-level=info"
gzip -d clash.gz && chmod +x clash
./clash -v
# Uninstall
# rm ~/clash ~/.config/clash -rf

# 
sudo apt install jq proxychains4 -y
ssr restart
export http_proxy='127.0.0.1:1080'
export https_proxy='127.0.0.1:1080'


