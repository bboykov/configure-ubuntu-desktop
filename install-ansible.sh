#!/usr/bin/env bash

set -o errexit
set -x

case "$OSTYPE" in
  darwin*)
    sudo easy_install pip
    ;;
  linux*)
    if cat /etc/*release | grep ^NAME | grep Ubuntu; then
      sudo apt-get update
      sudo apt install -y git python-pip
    fi
    ;;
  *) echo "Unsupported OS type: $OSTYPE" ;;
esac

sudo -H pip install "ansible==2.6.3"
