#!/bin/bash

set -e

### 
# Secretive setup
###
SSH_AUTH_SOCK=~/Library/Containers/com.maxgoedjen.Secretive.SecretAgent/Data/socket.ssh

mkdir -p ~/.ssh

# general setup
echo "Host *
	IdentityAgent $SSH_AUTH_SOCK" >> ~/.ssh/config
# zsh specific, everything should™ pick up the general one but some
# (like git signing) don't
echo "export SSH_AUTH_SOCK="$SSH_AUTH_SOCK >> ~/.zshrc
###
# /Secretive setup
###
