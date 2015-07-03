java:
  cmd.run:
    # Accept Java licence by writing debconf defaults
    - name: |
        echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | /usr/bin/debconf-set-selections
  pkg.installed:
    - name: oracle-java8-installer
