#!/bin/bash
echo '# Running apt-get update ...'
apt-get update
echo '# Installing imagemagick ...'
apt-get install -y imagemagick
echo '# Installing blender ...'
apt-get install -y blender
echo '# Installing python-pip ...'
apt-get install -y python-pip
echo '# Installing azure-batch ...'
pip install azure-batch
echo '# Installing packages-microsoft-prod.deb ...'
wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb
echo '# Installing apt-transport-https ...'
sudo add-apt-repository -y universe
sudo apt-get -y install apt-transport-https
echo '# Running apt-get update ...'
sudo apt-get update
echo '# Installing install dotnet-sdk-2.2 ...'
sudo apt-get -y install dotnet-sdk-2.2
echo '# Installing install UNZIP'
sudo apt-get -y install unzip
wget -O azcopy.tar.gz https://aka.ms/downloadazcopyprlinux
tar -xf azcopy.tar.gz
./install.sh
blender --version

pwd

ls -l

echo "## DONE ##"
exit $?
