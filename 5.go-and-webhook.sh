#!/bin/bash

# https://github.com/adnanh/webhook

GO_FILENAME=go1.12.6.linux-amd64.tar.gz

sudo apt-get update
sudo apt-get -y upgrade
cd /tmp
wget https://dl.google.com/go/$GO_FILENAME
# curl -O https://storage.googleapis.com/golang/$GO_FILENAME
sudo tar -xvf $GO_FILENAME
sudo rm $GO_FILENAME
sudo mv go /usr/local

ZSHRC="$HOME/.zshrc"
PROFILE="$HOME/.profile"

if [ -e $ZSHRC ]; then
  echo modificando el zshrc
  echo export GOROOT=/usr/local/go >> ~/.zshrc;
  echo export GOPATH="\$HOME/go_workspace" >> ~/.zshrc;
  echo export PATH="\$PATH:/usr/local/go/bin:\$HOME/go_workspace/bin" >> ~/.zshrc;
  source ~/.zshrc;
elif [ -e $PROFILE ]; then
  echo modificando el profile
  echo export GOROOT=/usr/local/go >> ~/.profile;
  echo export GOPATH="\$HOME/go_workspace" >> ~/.profile;
  echo export PATH="\$PATH:/usr/local/go/bin:\$HOME/go_workspace/bin" >> ~/.profile;
  source ~/.profile;
else
  echo modificando el bashrc
  echo export GOROOT=/usr/local/go >> ~/.bashrc;
  echo export GOPATH="\$HOME/go_workspace" >> ~/.bashrc;
  echo export PATH="\$PATH:/usr/local/go/bin:\$HOME/go_workspace/bin" >> ~/.bashrc;
  source ~/.bashrc;
fi
go version
go get github.com/adnanh/webhook
