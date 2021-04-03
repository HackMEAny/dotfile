# dotfile
MY Dotfiles

Insert dotfiles in git repo:-
``` git init --bare $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config config --local status.showUntrackedFiles no
echo "alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'" >> $HOME/.bashrc

Add Files ::
config add .vimrc
config commit -m "Vimrc added"
config add remote origin <remote-url>
config push
```
Clone into new system :-
``` alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
echo ".cfg" >> .gitignore
git clone --bare <git-repo-url> $HOME/.cfg
alias config='/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME'
config checkout     ----> (May occur some error for .bashrc & .gitignore remove those files)
config config --local status.showUntrackedFiles no

Add Files ::
config add .vimrc
config commit -m "Vimrc added"
config push
