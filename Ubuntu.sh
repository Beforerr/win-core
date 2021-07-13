sudo apt install git curl
git clone https://github.com/Zijin-Cheung/win-core.git

# fish
sudo apt-add-repository ppa:fish-shell/release-3
sudo apt-get update
sudo apt-get install fish
chsh -s /usr/bin/fish

# Autojump
# [wting/autojump: A cd command that learns - easily navigate directories from the command line](https://github.com/wting/autojump)
git clone git://github.com/wting/autojump.git
cd autojump && ./install.py
echo " if test -f /home/zijin/.autojump/share/autojump/autojump.fish; . /home/zijin/.autojump/share/autojump/autojump.fish; end" > ~/.config/fish/config.fish

# Snap
set -U fish_user_paths /snap/bin $fish_user_paths