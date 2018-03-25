set -eu
echo "install nginx"
curl -O http://nginx.org/keys/nginx_signing.key
apt-key add nginx_signing.key
deb http://nginx.org/packages/ubuntu/ xenial nginx
deb-src http://nginx.org/packages/ubuntu/ xenial nginx
apt-get update
apt-get install nginx
echo "install nginx complete."