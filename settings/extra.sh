#!/bin/bash

# android studio & android emulator
sudo snap install android-studio --classic
sudo apt-get install openjdk-8-jre
sudo apt-get install openjdk-8-jdk
sudo apt-get install qemu-kvm libvirt-bin ubuntu-vm-builder bridge-utils
sudo apt-get install gcc-multilib lib32z1 lib32stdc++6
sudo adduser ${USER} kvm
sudo chown ${USER} /dev/kvm
~/Android/Sdk/tools/bin/sdkmanager --licenses

sudo snap install spotify
sudo snap install slack --classic
sudo snap install skype --classic

# graphql
# sudo snap install altair