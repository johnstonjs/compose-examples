#!/bin/sh

# Install Uptime Kuma docker-compose as systemd service
sudo ln -s /etc/compose/uptime/systemd/docker-uptime.service /etc/systemd/system/docker-uptime.service
sudo ln -s /etc/compose/uptime/systemd/docker-uptime-reload.service /etc/systemd/system/docker-uptime-reload.service
sudo ln -s /etc/compose/uptime/systemd/docker-uptime-reload.timer /etc/systemd/system/docker-uptime-reload.timer
sudo systemctl daemon-reload
sudo systemctl enable docker-uptime docker-uptime-reload.timer
sudo systemctl start docker-uptime docker-uptime-reload.timer
