#!/usr/bin/env bash
set -eu
echo "install mysql5.7"
echo "mysql-server mysql-server/root_password password dev" | debconf-set-selections
echo "mysql-server mysql-server/root_password_again password dev" | debconf-set-selections
apt-get install -y mysql-server
echo "install mysql5.7 complete."