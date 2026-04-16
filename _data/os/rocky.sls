security:
  firewall:
    backend: iptables
services_os:
  running:
    - sshd
    - crond
  dead: []
  watch:
    sshd: /etc/ssh/sshd_config          
