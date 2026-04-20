fail2ban_common:
  default:
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
firewall_common:
  allow:
    - 22
  deny: []
