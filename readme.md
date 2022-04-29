### config multiple git account
1. generate ssh key by command `ssh-keygen -t ed25519 -C "user@domain"`
2. add ssh config
```
Host github.com-office
  HostName github.com
  User git
  IdentityFile /path/to/public_key

Host github.com-person
  HostName github.com
  User git
  IdentityFile /path/to/public_key
```
3. add private key by `ssh-add /path/to/private_key`
4. setup repository `git remote set-url origin git@github.com-person:username/repo.git`

### install zsh, oh my shell
1. sudo apt install zsh curl wget git -y 
2. chsh -s $(which zsh)
3. sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
4. git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
5. git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
6. sed -i "s/plugins=(git)/plugins=(git zsh-autosuggestions zsh-syntax-highlighting)/g" ~/.zshrc

### install fish-shell and oh-my-fish
1. sudo apt-get install fish -y
2. curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish
3. omf theme agnoster

### install vundle plugins
1. git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

### how to export vscode extensions
```
code --list-extensions | xargs -L 1 echo code --install-extension
```

