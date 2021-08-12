cp ~/.profile ~/.profile.bak

tee --append ~/.profile > /dev/null <<EOT

alias python=python3

# wr evaluates to the absolute path to your Windows user's root.
export wr=~/../../mnt/c/Users/zijin/

# This gives us a quick way of moving directly to the Windows root
alias cdwr='cd "$wr"'

# This brings you to your Windows Working directory immediatly when you open a new terminal.
# cdwr
EOT

# Ansible
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py --user
python -m pip install --user ansible