security:
  firewall:
    backend: ufw
packages_os:
  install:
    - ufw
services_os:
  running:
    - ssh
    - cron
  dead: []
  watch:
    ssh: deploy_ssh_config
firewall_os:
  allow:
    - 8080  ← exemple port spécifique Ubuntu
  deny: []
