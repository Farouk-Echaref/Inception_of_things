#!/usr/bin/env bash

# Start shell provisioning
echo -e "\033[1;33m--Control plane provisioning--\033[0m"

# install necessary tools
echo "Installing necesary tools..."
sudo apt install net-tools

# set up k3S
echo "Set up K3S..."

# install k3s server
curl -sfL https://get.k3s.io | INSTALL_K3S_EXEC="--write-kubeconfig-mode 644" sh -

# create the k3s resources for the apps
echo "Creating the deployments..."
sudo kubectl create -f /vagrant/confs/

