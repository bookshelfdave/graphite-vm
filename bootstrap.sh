sudo apt-get update
sudo apt-get -y install git vim
git clone https://github.com/gdbtek/setup-graphite.git
cd setup-graphite
sudo ./ubuntu.bash --login 'root' --password 'root' --email 'root@localhost.com'

cd /opt/graphite/conf/
sudo perl -p -i -e "s/ENABLE_UDP_LISTENER = False/ENABLE_UDP_LISTENER = True/g" ./carbon.conf
sudo perl -p -i -e "s/UDP_RECEIVER_PORT = 2003/UDP_RECEIVER_PORT = 2005/g" ./carbon.conf
cd ~/setup-graphite/bin
sudo ./restart
