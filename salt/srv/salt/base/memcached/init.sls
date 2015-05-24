memcached:
  pkg.installed:
    - name: memcached
  service:
    - running
    - require:
      - pkg: memcached
    - watch:
      - file: /etc/memcached.conf

/etc/memcached.conf:
  file.managed:
    - source: salt://memcached/etc/memcached.conf
    - template: jinja
