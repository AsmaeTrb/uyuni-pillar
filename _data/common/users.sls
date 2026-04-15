groups_common:
  group:
    - asmae
    - cdrom
users_common:
  user:
    mohamed:
      password: '$6$gyaglYQq7MMG5CVL$f9WaUWVUWEPSvUXUySqVg3GH./j7hLFwuPNFnY2bx92gs4EnA6ZNIjhzGfdElfQdijoE68uvVS51WZg96NdYS/'
      shell: /bin/bash
      groups:
        - asmae
        - cdrom
      state: present
      ssh_keys:
        - 'ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMgSI/5Mx4O65NLBncyIDEWpSYnh+bmteDmZ44IvwXc8 ansible-uyuni'
      sudo: "mohamed ALL=(ALL) NOPASSWD:ALL"
