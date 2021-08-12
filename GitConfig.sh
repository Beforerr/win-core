#!/bin/bash
userEmail="zzj956959688@gmail.com"
# ssh-keygen -t rsa -C $userEmail

# WSL
# export userEmail="zzj956959688@gmail.com"
# git config --global http.proxy 172.25.224.1:7890
# git config --global http.proxy 172.29.48.1:7890
# '$GIT_USER_NAME = "Zijin-Cheung"' >> $PROFILE

git config --list

git config --global user.name "zijin"
git config --global user.email $userEmail
# git config --global http.proxy localhost:10809
git config --global color.ui true
git config --global alias.b branch
git config --global alias.c commit
git config --global alias.ca 'commit --all'
git config --global alias.g pull
git config --global alias.p push
git config --global alias.s status
git config --global alias.co checkout
git config --global alias.last 'log -1 HEAD'

# git clone git@github.com:Zijin-Zhang/win-core.git
# git add *
# git commit -m "Init git repository"
# git branch -M main
# git remote add origin git@github.com:Zijin-Zhang/win-core.git
# git push -u origin main