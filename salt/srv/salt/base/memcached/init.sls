memcached:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/memcached.conf

/etc/memcached.conf:
  file.managed:
    - source: salt://memcached/etc/memcached.conf
    - template: jinja
