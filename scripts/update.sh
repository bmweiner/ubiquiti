cd $(dirname $0)

sudo apt-get update
sudo apt-get install unifi -y

sudo service unifi restart