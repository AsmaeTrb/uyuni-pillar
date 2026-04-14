fail2ban:
  bantime: 600
  findtime: 600
  maxretry: 5
  ignoreip:
    - 127.0.0.1/8
    - 192.168.86.0/24
  jails:
    sshd:
      enabled: true
      port: 22
      maxretry: 3
      bantime: 3600
security:
  firewall:
    enabled: true

    allowed_tcp_ports:
      - 22

    denied_tcp_ports:
      - 23
