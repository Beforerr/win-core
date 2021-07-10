sudo apt install git curl
git clone https://github.com/Zijin-Cheung/win-core.git

# fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
chsh -s /usr/bin/fish
<<<<<<< HEAD
sudo adduser zijin


# Docker
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.1/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
=======
# [jorgebucaran/fisher: A plugin manager for Fish.](https://github.com/jorgebucaran/fisher)
curl -sL https://cdn.jsdelivr.net/gh/jorgebucaran/fisher@main/functions/fisher.fish | source && fisher install jorgebucaran/fisher
>>>>>>> 5eced45b19469026bec8f40267a1294970deea1d

## Speedtest
# [sivel/speedtest-cli: Command line interface for testing internet bandwidth using speedtest.net](https://github.com/sivel/speedtest-cli)
pip install speedtest-cli

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

# Snap
set -U fish_user_paths /snap/bin $fish_user_paths