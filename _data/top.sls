base:
  '*':
    - common.packages
    - common.users
    - common.services
    - common.configs
    - common.security    
  'G@os:Ubuntu':
    - match: grain
    - os.ubuntu
  'G@os:Rocky':
    - match: grain
    - os.rocky
  'G@os:Debian':
    - match: grain
    - os.debian
  'debian12':
    - hosts.debian12
  'debian13':
    - hosts.debian13
  '192.168.78.132':
    - hosts.rocky8
  '192.168.78.138':
    - hosts.rocky9
  'asmae-VMware-Virtual-Platform':
    - hosts.ubuntu01
