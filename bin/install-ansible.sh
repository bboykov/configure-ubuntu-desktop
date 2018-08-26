#!/usr/bin/env bash

set -o errexit
set -x

# Install pip
sudo apt-get update
sudo apt install -y git python-pip

# Install ansible
sudo -H pip install "ansible==2.6.3"
