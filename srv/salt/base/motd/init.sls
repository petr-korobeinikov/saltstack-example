/etc/motd:
  file.managed:
    - source: salt://motd/etc/motd
    - template: jinja
