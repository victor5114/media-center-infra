#!/bin/bash

sudo useradd --create-home --shell /bin/bash --user-group -c "Ansible" ansible
echo "ansible ALL=(ALL) NOPASSWD:ALL" | sudo tee /etc/sudoers.d/ansible

sudo mkdir -p /home/ansible/.ssh
sudo mv /tmp/ansible_scw_perso.pub /home/ansible/.ssh/ansible_scw_perso.pub
cat /home/ansible/.ssh/ansible_scw_perso.pub | sudo tee /home/ansible/.ssh/authorized_keys
sudo chown -R ansible:ansible /home/ansible/.ssh 
sudo chmod 400 /home/ansible/.ssh/*
sudo chmod 500 /home/ansible/.ssh