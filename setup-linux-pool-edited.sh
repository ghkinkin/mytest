#!/bin/bash
echo '# Running apt-get update ...'
apt-get update
echo '# Installing imagemagick ...'
apt-get install -y imagemagick
echo '# Installing python-pip ...'
apt-get install -y python-pip
echo '# Installing azure-batch ...'
pip install azure-batch==4.1.3
echo '# Installing packages-microsoft-prod.deb ...'
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
echo '# Installing apt-transport-https ...'
sudo apt-get -y install apt-transport-https
echo '# Running apt-get update ...'
sudo apt-get update
echo '# Installing install dotnet-sdk-2.1 ...'
sudo apt-get -y install dotnet-sdk-2.1
wget -O azcopy.tar.gz https://aka.ms/downloadazcopyprlinux
tar -xf azcopy.tar.gz

./install.sh

echo '# Installing blender ...'
sudo add-apt-repository -y ppa:thomas-schiex/blender
sudo apt-get update
apt-get install -y blender
blender --version

echo "## DONE ##"
exit $?
