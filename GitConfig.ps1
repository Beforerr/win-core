$userEmail = "zzj956959688@gmail.com"

git config --global user.name "zijin"
git config --global user.email $userEmail
git config --global http.proxy localhost:10809
git config --global color.ui true
git config --global alias.b branch
git config --global alias.c commit
git config --global alias.ca "commit -all"
git config --global alias.g pull
git config --global alias.p push
git config --global alias.s status
git config --global alias.co checkout


git config --global alias.st status
'$GIT_USER_NAME = "Zijin-Cheung"' >> $PROFILE

ssh-keygen -t rsa -C $userEmail

git clone git@github.com:Zijin-Zhang/win-core.git


$repositoryName = "AI"
cd ~ && mkdir $repositoryName && cd $repositoryName
echo "# $repositoryName" >> README.md
git init
gh repo create -y --public
git remote set-url origin --add https://gitlab.com/${GIT_USER_NAME}/${repositoryName}.git

# git add *
# git commit -m "Init git repository"
# git branch -M main
# git remote add origin git@github.com:Zijin-Zhang/win-core.git
# git push -u origin main
