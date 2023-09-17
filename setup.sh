# Running it by "sudo bash setup.sh"
sudo apt-get install -y apt-transport-https &&
  keyring_location=/usr/share/keyrings/modular-installer-archive-keyring.gpg &&
  sudo curl -1sLf 'https://dl.modular.com/bBNWiLZX5igwHXeu/installer/gpg.0E4925737A3895AD.key' |  gpg --dearmor >> ${keyring_location} &&
  sudo curl -1sLf 'https://dl.modular.com/bBNWiLZX5igwHXeu/installer/config.deb.txt?distro=debian&codename=wheezy' > /etc/apt/sources.list.d/modular-installer.list &&
  sudo apt-get update &&
  sudo apt-get install -y modular

sudo modular auth mut_feb0d3bbcdda4e85968763b965f10606 &&
sudo modular install mojo

echo 'export MODULAR_HOME="$HOME/.modular"' >> ~/.bashrc
echo 'export PATH="$MODULAR_HOME/pkg/packages.modular.com_mojo/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc