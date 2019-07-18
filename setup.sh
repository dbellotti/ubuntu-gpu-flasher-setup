#! /bin/bash

sudo apt update
sudo apt -y install openssh-server

sudo ./atiflash -s 0 backupbios.rom

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
sudo apt update
sudo apt -y install mono-devel

git clone https://github.com/vanities/PolarisBiosEditor-1.6.7 && cd PolarisBiosEditor-1.6.7
sudo ./run.sh
