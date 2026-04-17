security:
  firewall:
    backend: ufw
packages_os:
  install:
    - build-essential
    - apt-transport-https
groups_os:
  group:
    - aline
services_os:
  running:
    - ssh
    - cron
  dead:
    - telnet
  watch: 
    ssh: deploy_ssh_config       
users_os:
  user:
    hajar:
      shell: /bin/bash
      password: ''
      state: present
      groups:
        - yousra
        - asmae
        - aline
      ssh_keys:
        - 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMgSI/5Mx4O65NLBncyIDEWpSYnh+bmteDmZ44IvwXc8 ansible-uyuni'
