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
