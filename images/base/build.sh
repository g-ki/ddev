#!/usr/bin/env bash

# If one command exits with an error, stop the script immediately.
set -e

# Print every line executed to the terminal
set -x

apt-install() {
	apt-get install --no-install-recommends -y "$@"
}

apt-get update


# Essentials
apt-install tree curl python-pip

apt-install apt-utils

curl -fsSL https://get.docker.com -o /tmp/get-docker.sh
sh /tmp/get-docker.sh

usermod -aG docker ddev

apt-install htop iotop iftop

# Install bash tab completion.
apt-install bash-completion

# ssh
apt-install openssh-client

# To cryptographically sign git commits
apt-install gpg gpg-agent

# Install latest git
apt-install software-properties-common
sudo apt-add-repository ppa:git-core/ppa
sudo apt-get update
apt-install git
sudo apt-get purge -y software-properties-common

apt-install build-essential pkgconf

echo 'export HISTTIMEFORMAT="%d/%m/%y %T "' >> ~/.bashrc

# clean cache
apt-get autoremove -y
apt-get clean
rm -rf /var/lib/apt/lists/*
