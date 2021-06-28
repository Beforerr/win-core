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
git clone https://github.com/Zijin-Cheung/win-core.git


# fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
echo /usr/local/bin/fish | sudo tee -a /etc/shells
chsh -s /usr/bin/fish
sudo adduser zijin
# fish setting
set -U fish_user_paths $HOME/.local/bin/ $fish_user_paths

# Docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose

# System debugging
# [Byobu](https://www.byobu.org/)
sudo apt install byobu tree dstat ncdu -y
## Speedtest
# [sivel/speedtest-cli: Command line interface for testing internet bandwidth using speedtest.net](https://github.com/sivel/speedtest-cli)
pip install speedtest-cli



# Conda
## Install
# [anaconda | 镜像站使用帮助 | 清华大学开源软件镜像站 | Tsinghua Open Source Mirror](https://mirrors.tuna.tsinghua.edu.cn/help/anaconda/)
# [Installation — conda 4.10.1.post42+729e8b2cc documentation](https://conda.io/projects/conda/en/latest/user-guide/install/index.html)
# - [Installing on Linux — conda 4.10.1.post42+729e8b2cc documentation](https://conda.io/projects/conda/en/latest/user-guide/install/linux.html)
wget https://mirrors.tuna.tsinghua.edu.cn/anaconda/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash Miniconda3-latest-Linux-x86_64.sh && miniconda3/bin/conda init fish
## Uninstall
# rm -rf ~/miniconda 
# rm -rf ~/.condarc ~/.conda ~/.continuum

# pip3 config set global.index-url http://mirrors.aliyun.com/pypi/simple/
# pip3 config set install.trusted-host mirrors.aliyun.com

# Glances
# [Glances - An Eye on your system](https://nicolargo.github.io/glances/)
pip install glances

# Fuck
pip install thefuck

# Autojump
# [wting/autojump: A cd command that learns - easily navigate directories from the command line](https://github.com/wting/autojump)
git clone git://github.com/wting/autojump.git
cd autojump && ./install.py
echo " if test -f /home/zijin/.autojump/share/autojump/autojump.fish; . /home/zijin/.autojump/share/autojump/autojump.fish; end" > ~/.config/fish/config.fish






