system:
  hostname: ubuntu01AsmaeTribak
ssh:
  allowed_users:
    - asmae
    - mohamed
packages_host:
  install:
    - git
    - net-tools
    - tree
    - unzip
    - python3
    - python3-pip
  remove: []
firewall_host:
  allow:
    - 80
    - 443
  deny:
    - 21
groups_host:
  group:
    - devops
users_host:
  user:
    asmae:
      shell: /bin/bash
      password: ''
      groups:
        - asmae
        - devops
      state: present
      ssh_keys:
        - "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMgSI/5Mx4O65NLBncyIDEWpSYnh+bmteDmZ44IvwXc8 ansible-uyuni"
      sudo: "asmae ALL=(ALL) NOPASSWD:ALL"
