#!/bin/sh

# Install Traefik proxy docker-compose as systemd service
sudo ln -s /etc/compose/traefik/systemd/docker-traefik.service /etc/systemd/system/docker-traefik.service
sudo ln -s /etc/compose/traefik/systemd/docker-traefik-reload.service /etc/systemd/system/docker-traefik-reload.service
sudo ln -s /etc/compose/traefik/systemd/docker-traefik-reload.timer /etc/systemd/system/docker-traefik-reload.timer
sudo systemctl daemon-reload
sudo systemctl enable docker-traefik docker-traefik-reload.timer
sudo systemctl start docker-traefik docker-traefik-reload.timer
