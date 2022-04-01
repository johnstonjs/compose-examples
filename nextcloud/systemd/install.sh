#!/bin/sh

# Install Nextcloud docker-compose as systemd service
sudo ln -s /etc/compose/nextcloud/systemd/docker-nextcloud.service /etc/systemd/system/docker-nextcloud.service
sudo ln -s /etc/compose/nextcloud/systemd/docker-nextcloud-reload.service /etc/systemd/system/docker-nextcloud-reload.service
sudo ln -s /etc/compose/nextcloud/systemd/docker-nextcloud-reload.timer /etc/systemd/system/docker-nextcloud-reload.timer
sudo systemctl daemon-reload
sudo systemctl enable docker-nextcloud docker-nextcloud-reload.timer
sudo systemctl start docker-nextcloud docker-nextcloud-reload.timer
