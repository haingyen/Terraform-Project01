#!/bin/bash

# install jenkins

sudo apt update
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
sudo apt upgrade -y
sudo apt install -y openjdk-17-jre 
sudo apt install -y jenkins
sudo systemctl enable jenkins
sudo systemctl start jenkins

# install git
sudo apt install -y git

# install terraform

sudo apt install -y yum-utils
sudo apt-config-manager --add-repo https://rpm.releases.hashicorp.com/AmazonLinux/hashicorp.repo
sudo apt install -y terraform

# install kubectl

sudo curl -LO https://storage.googleapis.com/kubernetes-release/release/v1.23.6/bin/linux/amd64/kubectl
sudo chmod +x ./kubectl
sudo mkdir -p $HOME/bin && sudo cp ./kubectl $HOME/bin/kubectl && export PATH=$PATH:$HOME/bin