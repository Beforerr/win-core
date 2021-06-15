# cp /etc/apt/sources.list.bak
# echo '''
# deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
# deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
# deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
# deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
# deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
# deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
# deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
# deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
# deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
# deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
# ''' | sudo tee /etc/apt/sources.list


sudo apt install git curl

# fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
sudo adduser zijin

# Fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
# fish setting
set -U fish_user_paths $HOME/.local/bin/ $fish_user_paths

# Docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# System debugging
sudo apt install byobu tree dstat ncdu -y
## Speedtest
curl -s https://install.speedtest.net/app/cli/install.deb.sh | sudo bash
sudo apt-get install speedtest
sudo apt install 



# Glances
# sudo snap install glances
pip3 config set global.index-url http://mirrors.aliyun.com/pypi/simple/
pip3 config set install.trusted-host mirrors.aliyun.com
pip3 install glances

# Fuck
pip3 install thefuck

# Autojump
# [wting/autojump: A cd command that learns - easily navigate directories from the command line](https://github.com/wting/autojump)
git clone git://github.com/wting/autojump.git
cd autojump && ./install.py
echo " if test -f /home/zijin/.autojump/share/autojump/autojump.fish; . /home/zijin/.autojump/share/autojump/autojump.fish; end" > ~/.config/fish/config.fish






