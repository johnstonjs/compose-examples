# Grafana InfluxDB, and Telegraf

## Telegraf Installation

For Ubuntu 20.04 and earlier, execute:

```
curl -s https://repos.influxdata.com/influxdb.key | sudo tee /etc/apt/trusted.gpg.d/influxdb.asc >/dev/null
source /etc/os-release
echo "deb https://repos.influxdata.com/${ID} ${VERSION_CODENAME} stable" | sudo tee /etc/apt/sources.list.d/influxdb.list
sudo apt-get update && sudo apt-get install telegraf
```

Create an API Token in [InfluxDB](https://influxdb.oh.example.com), specific
to the system being configured, such as `hostname.example.com`.

Replace `/etc/telegaf/telegraf.conf` with [this version](./config/telegraf/telegraf.conf)
