java_repo:
  pkgrepo.managed:
    - name: deb http://ppa.launchpad.net/webupd8team/java/ubuntu trusty main
    - keyid: EEA14886
    - keyserver: keyserver.ubuntu.com
    - file: /etc/apt/sources.list.d/java.list
    - require_in:
      - pkg: java
