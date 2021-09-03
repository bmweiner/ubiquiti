cd $(dirname $0)

sudo apt-get update --allow-releaseinfo-change
sudo apt-get install unifi -y

sudo service unifi restart
