#!/bin/bash

set -e

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

brew bundle

code --install-extension aws-scripting-guy.cform
code --install-extension golang.go
code --install-extension ms-azuretools.vscode-docker
code --install-extension ms-python.python
code --install-extension ms-python.vscode-pylance
code --install-extension ms-toolsai.jupyter
code --install-extension octref.vetur
code --install-extension redhat.vscode-yaml
code --install-extension sdras.vue-vscode-snippets