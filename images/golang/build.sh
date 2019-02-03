#!/usr/bin/env bash

set -x
set -e

echo "export PATH=$PATH:/usr/local/go/bin:${HOME}/go/bin" >> ~/.zshrc
PATH=$PATH:/usr/local/go/bin:${HOME}/go/bin

# Add plugins and customizations.
cat /tmp/.post-plugin.vim >> ~/.post-plugin.vim
cat /tmp/.plugin.vim >> ~/.plugin.vim
vim -T dumb -n +PlugInstall +qall
vim -T dumb -n +GoInstallBinaries +qall