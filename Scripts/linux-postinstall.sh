sudo apt install autoconf

# Tig
git clone https://github.com/jonas/tig.git /tmp/tig
cd /tmp/tig
sudo make configure prefix=/usr/local
./configure
sudo make prefix=/usr/local
sudo make install prefix=/usr/local
sudo make install-doc prefix=/usr/local
