base:
  '*':
    - common.packages
    - common.users
    - common.services
    - common.configs
    - common.security    
  'os:Ubuntu':
    - match: grain
    - os.ubuntu
  'os:Rocky':
    - match: grain
    - os.rocky
  'os:Debian':
    - match: grain
    - os.debian
  'debian12':
    - hosts.debian12
  'debian13':
    - hosts.debian13
  '192.168.78.132':
    - hosts.rocky8
  '192.168.86.130':
    - hosts.rocky9
  '192.168.100.188':
    - hosts.ubuntu0
