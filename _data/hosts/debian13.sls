system: 
  hostname: debian12AsmaeTribak
packages_host:
  install:
    - docker.io
groups_host:
  group:
    - yousra
users_host:
  user:
    asmae:
      shell: /bin/bash
      password: ''
      groups:
        - asmae
        - yousra
      state: present
      ssh_keys: 
        - "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMgSI/5Mx4O65NLBncyIDEWpSYnh+bmteDmZ44IvwXc8 ansible-uyuni"
      sudo: "asmae ALL=(ALL) NOPASSWD:ALL"
ssh:
  allowed_users:
    - asmae
crons_host:
  job:
    backup:
      month: "*"
      hour: "2"
      minute: "0"
      daymonth: "*"
      dayweek: "*"
      job: " tar -czf /backup/exemple.tar.gz /home "
      state: present
      user: root
    clean_log:
      month: "*"
      hour: "3"
      minute: "0"
      dayweek: "*"
      daymonth: "*"
      job: " find /var/log -name '*.log' -mtime +30 -delete "
      user: root
      state: present
    check_disk:
      month: "*"
      hour: "*"
      minute: "0"
      dayweek: "*"
      daymonth: "*"
      job: " df -h > /var/log/disktest.log"
      user: root
      state: present
firewall_host:
  allow:
    - 443
  deny:
    - 23
