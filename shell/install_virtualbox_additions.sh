set -eu
echo "install virtualbox additions"
# sudo apt-get install virtualbox-guest-additions-iso
# sudo apt-get update
# sudo apt-get dist-upgrade
# sudo apt-get install virtualbox-guest-x11
sudo apt-get install virtualbox-guest-dkms -y
echo "install virtualbox additions complete."