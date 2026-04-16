security:
  firewall:
    backend: ufw
services_os:
  running:
    - ssh
    - cron
  dead: []
  watch:
    ssh: /etc/ssh/sshd_config
