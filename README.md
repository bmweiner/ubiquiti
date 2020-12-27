# ubiquiti

Setup scripts for Ubiquiti UNIFI controller and UNMS software on Raspberry 
Pi 4 Model B.

## Hardware Setup

 1. Flash SD card with Ubuntu Server 20.03.1 LTS 64-bit (Focal)
 2. `touch ssh` in SD card root directory to enable ssh
 3. Insert SD card to Pi and power on
 4. `ssh-keygen -t rsa -b 4096` to create ssh key
 5. `ssh-copy-id -i ~/.ssh/id_rsa ubuntu@<host>` to copy ssh key to PI
 6. `vi .ssh/config` to add host entry:
    Host ui
        HostName <host>
        User ubuntu
        IdentityFile ~/.ssh/id_rsa
7. `ssh ui`

## Software Setup

 1. `ssh ui`
 2. Clone `ubiquiti` repo
 3. `sh ./setup.sh` to install and start software
 4. Login to Unifi controller at `http://<host>:8443` and configure

## TODO
 1. Add UNMS, currently only unifi is installed

## Notes

### Installing UNIFI Controller on Ubuntu

**Install instructions**
https://help.ui.com/hc/en-us/articles/220066768-UniFi-How-to-Install-and-Update-via-APT-on-Debian-or-Ubuntu

**Configuration**
https://help.ui.com/hc/en-us/articles/205202580-UniFi-Explaining-the-system-properties-File#2
