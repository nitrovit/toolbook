#!/bin/bash

# Exit if any command fails
set -e

# Update system and install dependencies
echo -e "\033[1;34mUpdating system and installing dependencies...\033[0m"
sudo apt update && sudo apt upgrade -y
sudo apt install -y software-properties-common git python3-pip pipx

# Install Ansible using pipx
echo -e "\033[1;34mInstalling Ansible using pipx...\033[0m"
pipx install ansible

# Install additional Ansible collections or roles if needed
echo -e "\033[1;34mInstalling Ansible collections...\033[0m"
ansible-galaxy collection install ansible.utils

# Run the Ansible playbook
echo -e "\033[1;34mRunning Ansible playbook...\033[0m"
ansible-playbook playbook.yml

echo -e "\033[1;32mSetup complete! Ansible playbook executed successfully.\033[0m"

