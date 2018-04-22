set -eu
echo "install nginx"
curl -O http://nginx.org/keys/nginx_signing.key
apt-key add nginx_signing.key
sudo sh -c "echo deb http://nginx.org/packages/ubuntu/ xenial nginx >> /etc/apt/sources.list"
sudo sh -c "echo deb-src http://nginx.org/packages/ubuntu/ xenial nginx >> /etc/apt/sources.list"
sudo apt-get update
sudo apt-get install nginx
echo "install nginx complete."
