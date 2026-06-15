#!/bin/bash

set -e
repo="config"

if ! grep -q '^ID=fedora' /etc/os-release; then
  echo "! Warning ! : This script is made for fedora everthing"
  read -p "Continure? [y/n]: " p
  case "$p" in
  [yY])
    echo "continure text"
    ;;
  *)
    echo "Exit text"
    exit
    ;;
  esac
fi

cd /tmp

sudo dnf in -y git


if ! [ -d "/tmp/$repo" ]; then
  git clone https://github.com/flawada/$repo
fi

######

clear

cd /tmp/$repo/blueprints

blueprints=()
i=0

for blueprint in */; do
  blueprints+=("$blueprint")
  echo "$i) ${blueprint%/}"
  ((i++))
done

read -p "select blueprint: " item

cd ${blueprints[$item]}

sudo dnf update -y

bash setup.sh
