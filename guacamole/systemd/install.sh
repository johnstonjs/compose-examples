#!/bin/sh

# Install Guacamole docker-compose as systemd service
sudo ln -s /etc/compose/guacamole/systemd/docker-guacamole.service /etc/systemd/system/docker-guacamole.service
sudo ln -s /etc/compose/guacamole/systemd/docker-guacamole-reload.service /etc/systemd/system/docker-guacamole-reload.service
sudo ln -s /etc/compose/guacamole/systemd/docker-guacamole-reload.timer /etc/systemd/system/docker-guacamole-reload.timer
sudo systemctl daemon-reload
sudo systemctl enable docker-guacamole docker-guacamole-reload.timer
sudo systemctl start docker-guacamole docker-guacamole-reload.timer
