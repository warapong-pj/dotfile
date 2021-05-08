### how to install brew on ubuntu
1. sudo apt-get install -y build-essential procps curl file git
2. /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

### how to export vscode extensions
```
code --list-extensions | xargs -L 1 echo code --install-extension
```
