#!/bin/bash
sudo useradd -d /home/ansible -s /bin/bash -m ansible
#sudo echo "ansible:ansible" | chpasswd
sudo echo "ansible  ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible
#sudo sed -i "/^[^#]*PasswordAuthentication[[:space:]]no/c\PasswordAuthentication yes" /etc/ssh/sshd_config
#sudo service sshd restart
sudo su - ansible << EOF
mkdir .ssh
cd .ssh
echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQCX7/PTIFB7S7XO8cElhVbaS4kBTdFcafKoRXFhtHV54noxZXdiHQZEikDelHWF73AjzDfAYCnfFhReuKoV60yAIlivWWsBBpuU0XSpNMfHF9CsSOKYcuxXrFHz30jbv2QJIqbVGx0qI3rGLi6v2EDDCm0d1bPXv7RfiHXoPsy6zycAF/ph7ho9/I4x/w/qMqKNffWHwtxRyla/ex2vol+GXnnu2wN1Uzqj4UrFYWc9pIkPmorq/1vEhkL2gqBF/ptZgQ++OE8NaVyaxPcZE8aR+2OFLMQJyQbkA6osybz/Yv3cOWIIVJZVDsvFEJelKT/WI9rBZwGk3iUM9KD/+TbWrcJ2ySxO+tzt0/Vs71VHhZ2x/hsl1l4wdX2VmeXLRfzijgDpQePKCiL/uHZaa/NNF5V3SFp9iw51iLEIe6zKwhdD43xXElt4wsqbVwrAUXqzOIqGHSpi41NzkiTAZewoJFTTPxwQm9vzn2pY2pwl860wX0Nfim1N9sTuJIXPR88= ansible@ip-172-31-42-65" >authorized_keys
chmod 644 authorized_keys
EOF