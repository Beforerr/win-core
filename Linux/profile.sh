cp ~/.profile ~/.profile.bak


tee --append ~/.profile > /dev/null <<EOT
# wr evaluates to the absolute path to your Windows user's root.
export wr=~/../../mnt/c/Users/zijin/

# This gives us a quick way of moving directly to the Windows root
alias cdwr='cd "$wr"'

# This brings you to your Windows Working directory immediatly when you open a new terminal.
cdwr

EOT