#!/bin/sh

# Install grafana docker-compose as systemd service
sudo ln -s /etc/compose/grafana/systemd/docker-grafana.service /etc/systemd/system/docker-grafana.service
sudo ln -s /etc/compose/grafana/systemd/docker-grafana-reload.service /etc/systemd/system/docker-grafana-reload.service
sudo ln -s /etc/compose/grafana/systemd/docker-grafana-reload.timer /etc/systemd/system/docker-grafana-reload.timer
sudo systemctl daemon-reload
sudo systemctl enable docker-grafana docker-grafana-reload.timer
sudo systemctl start docker-grafana docker-grafana-reload.timer
