cp /etc/apt/sources.list.bak
echo '''
deb http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-security main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-updates main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-proposed main restricted universe multiverse
deb http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
deb-src http://mirrors.aliyun.com/ubuntu/ focal-backports main restricted universe multiverse
''' | sudo tee /etc/apt/sources.list

sudo apt-get update
sudo apt-get upgrade -y
sudo apt autoremove -y

sudo apt-get install curl zip unzip tar -y

curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -
sudo apt-get install nodejs -y
sudo apt-get install tldr -y

# Commandline
sudo apt install byobu -y
## bat
sudo apt install bat -y
mkdir -p ~/.local/bin
## fuck
sudo apt install python3-dev python3-pip python3-setuptools
sudo pip3 install thefuck
ln -s /usr/bin/batcat ~/.local/bin/bat


# System debugging
sudo apt-get install tree
sudo apt install dstat
sudo apt install glances
## net
sudo apt-get install net-tools speedtest-cli -y

