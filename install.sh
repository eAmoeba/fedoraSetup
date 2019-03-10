#!/bin/bash

###
# RpmFusion Free Repositories
###
sudo dnf install -y https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

###
# Atom text editor Repositories
###
sudo rpm --import https://packagecloud.io/AtomEditor/atom/gpgkey;
sudo sh -c 'echo -e "[Atom]\nname=Atom Editor\nbaseurl=https://packagecloud.io/AtomEditor/atom/el/7/\$basearch\nenabled=1\ngpgcheck=0\nrepo_gpgcheck=1\ngpgkey=https://packagecloud.io/AtomEditor/atom/gpgkey" > /etc/yum.repos.d/atom.repo'

###
# Update system but not the kernel
###
sudo dnf update -y

###
# Remove unwanted software
###
# sudo dnf remove -y hexchat pidgin redshift thunderbird transmission xfburn parole

###
# Install base packages and applications
###
sudo dnf install -y atom aspell aspell-en bleachbit blender cowsay ffmpeg gimp git gstreamer-ffmpeg gstreamer-plugins-base gstreamer1-plugins-base gstreamer-plugins-good gstreamer-plugins-good-extras gstreamer1-plugins-good gstreamer1-plugins-good-extras gstreamer-plugins-ugly gstreamer1-plugins-ugly gstreamer-plugins-bad gstreamer1-plugins-bad-free gstreamer1-plugins-bad-freeworld gstreamer1-plugins-bad-free-extras glances hwinfo htop icedtea-web irssi iotop java-openjdk klavaro lutris lm_sensors mediawriter mpv nload nethogs powerline-fonts python3-idle python-pip shutter steam tig tilix units wavemon xfce4-terminal youtube-dl zsh

###
# Install Oh-My-Zsh!
###
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

###
# Install speedtest-cli with pip
###
sudo pip install speedtest-cli

###
# Install python language server - pip
###
sudo pip install python-language-server; sudo pip install --upgrade pip
echo "----------------------------------"
echo " Install Dropbox"
echo " www.dropbox.com"
echo "----------------------------------"
echo " glances command:"
echo " glances -1 -4 -t 3 --process-short-name -3 --hide-kernel-threads"
echo "----------------------------------"
echo "Install printer"
echo "https://support.brother.com/g/b/downloadlist.aspx?c=us&lang=en&prod=hll2395dw_us_as&os=127"
echo "----------------------------------"
echo " "
echo "----------------------------------"
echo "set dnf to use the fastest mirrors"
echo "sudo nano /etc/dnf/dnf.conf"
echo "#Add this to the end of the file"
echo "fastestmirror=True"
echo "----------------------------------"
echo " "
echo "----------------------------------"
echo "Download NVIDIA Driver"
echo "http://www.nvidia.com/Download/Find.aspx?lang=en-us"
echo "Then install NVIDIA Driver"
echo "https://www.if-not-true-then-false.com"
echo "----------------------------------"
echo " "
echo "----------------------------------"
echo "Please Reboot"
echo " "
