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

### install vundle plugins
1. install vundle `git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

### install powerline front
1. clone front and install script `git clone https://github.com/powerline/fonts.git --depth=1`
2. change directory and execute install script `cd front && ./install.sh`

### install python pip
1. download get-pip.py `curl -L -O https://bootstrap.pypa.io/get-pip.py`
2. execute script to install pip `python get-pip`

### install fish-shell and oh-my-fish
1. install dependencies `sudo apt update && sudo apt install -y build-essential cmake ncurses-dev libncurses5-dev libpcre2-dev gettext`
2. download and extract fish-shell `curl -L -O https://github.com/fish-shell/fish-shell/releases/download/3.6.0/fish-3.6.0.tar.xz && tar -xf fish-3.6.0.tar.xz`
3. install fish shell `cmake .; make; sudo make install;`
4. install oh-my-fish `curl https://raw.githubusercontent.com/oh-my-fish/oh-my-fish/master/bin/install | fish`
5. allow fish shell to login shell `echo /usr/local/bin/fish | sudo tee -a /etc/shells`
6. change default to fish shell `chsh -s /usr/local/bin/fish`
7. install theme `omf install cyan`

### install kind
1. download binary `curl -Lo ./kind https://kind.sigs.k8s.io/dl/v0.17.0/kind-linux-amd64`
2. append execute to binary file `chmod +x ./kind`
3. move file to PATH directory `sudo mv ./kind /usr/local/bin/kind`

### install kubectl
1. download binary `curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"`
2. append execute to binary file `chmod +x kubectl`
3. move file to PATH directory `sudo mv kubectl /usr/local/bin/`

### install helm
1. download helm `curl -L -O https://get.helm.sh/helm-v3.11.0-linux-amd64.tar.gz`
2. extract helm `tar -xzf helm-v3.11.0-linux-amd64.tar.gz`
3. move binary to PATH directory `sudo mv /linux-amd64/helm /usr/local/bin/helm`

### install k9s
1. download archive file `curl -L -O https://github.com/derailed/k9s/releases/download/v0.27.0/k9s_Linux_amd64.tar.gz`
2. extract archive file `tar -xzf k9s_Linux_amd64.tar.gz`
3. move file to PATH directory `sudo mv k9s /usr/local/bin/`

### install kubectx
1. clone kubectx repository `sudo git clone https://github.com/ahmetb/kubectx /opt/kubectx`
2. move kubectx to PATH directory `sudo ln -s /opt/kubectx/kubectx /usr/local/bin/kubectx`
3. move kubens to PATH directory `sudo ln -s /opt/kubectx/kubens /usr/local/bin/kubens`

### install k6
1. download binary file `https://github.com/grafana/k6/releases/download/v0.43.1/k6-v0.43.1-linux-amd64.tar.gz`
2. extract file `tar -xzf k6-v0.43.1-linux-amd64.tar.gz`
3. mv binary to PATH `sudo mv ./k6-v0.43.1-linux-amd64/k6 /usr/local/bin`

### how to export vscode extensions
```
code --list-extensions | xargs -L 1 echo code --install-extension
```
