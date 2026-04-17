security:
  firewall:
    backend: ufw
services_os:
  running:
    - ssh
    - cron
  dead: []
  watch:
    ssh: deploy_ssh_config
