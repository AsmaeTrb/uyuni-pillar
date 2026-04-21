system:
  hostname: Rocky9AsmaeTribak
rsyslog_server:
  enabled: true
  logdir: /var/log/remote
firewall_host:
  allow:
    - 514
  deny: []
services_host:
  running:
    - rsyslog
  watch:
    rsyslog: rsyslog_server_config

