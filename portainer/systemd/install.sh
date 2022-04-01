#!/bin/sh

# Install Portainer docker-compose as systemd service
sudo ln -s /etc/compose/portainer/systemd/docker-portainer.service /etc/systemd/system/docker-portainer.service
sudo ln -s /etc/compose/portainer/systemd/docker-portainer-reload.service /etc/systemd/system/docker-portainer-reload.service
sudo ln -s /etc/compose/portainer/systemd/docker-portainer-reload.timer /etc/systemd/system/docker-portainer-reload.timer
sudo systemctl daemon-reload
sudo systemctl enable docker-portainer docker-portainer-reload.timer
sudo systemctl start docker-portainer docker-portainer-reload.timer
