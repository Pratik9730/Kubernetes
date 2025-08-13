#!/bin/bash
set -e
# Install Docker
echo "Installing Docker..."
sudo apt-get update
sudo apt-get install -y docker.io
# Enable Docker service
echo "Enabling Docker service..."
sudo systemctl enable docker
sudo systemctl start docker
# Add user to docker group
echo "Adding user $USER to docker group..."
sudo usermod -aG docker $USER
