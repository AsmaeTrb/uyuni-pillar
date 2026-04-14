groups:
  common_groups:
    - asmae
    - cdrom
users:
  common_users:
    mohamed:
      password: '$6$gyaglYQq7MMG5CVL$f9WaUWVUWEPSvUXUySqVg3GH./j7hLFwuPNFnY2bx92gs4EnA6ZNIjhzGfdElfQdijoE68uvVS51WZg96NdYS/'
      shell: /bin/bash
      groups:
        - asmae
        - cdrom
      state: present
