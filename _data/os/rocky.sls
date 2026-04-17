security:
  firewall:
    backend: iptables
services_os:
  running:
    - sshd
    - crond
  dead: []
  watch:
    sshd: deploy_ssh_config          
