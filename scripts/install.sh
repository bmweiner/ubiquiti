sudo apt-get update
sudo apt-get install -y wget openjdk-8-jre-headless
sudo update-alternatives --set java /usr/lib/jvm/java-8-openjdk-arm64/jre/bin/java

echo 'deb [arch=armhf] https://www.ui.com/downloads/unifi/debian stable ubiquiti' | sudo tee /etc/apt/sources.list.d/100-ubnt-unifi.list
sudo wget -O /etc/apt/trusted.gpg.d/unifi-repo.gpg https://dl.ui.com/unifi/unifi-repo.gpg

sudo apt-get update
sudo apt-get install unifi -y

sudo service unifi restart
