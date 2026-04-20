security:
  firewall:
    backend: iptables
services_os:
  running:
    - sshd
    - crond
    - firewalld
  dead: []
  watch:
    sshd: deploy_ssh_config 
firewall_os:
  allow:
    - 9090
  deny: []         
