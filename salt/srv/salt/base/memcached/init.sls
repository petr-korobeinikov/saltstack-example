memcached:
  pkg.installed:
    - name: memcached
  service.running:
    - require:
      - pkg: memcached
    - watch:
      - file: /etc/memcached.conf

memcached_conf:
  file.managed:
    - name: /etc/memcached.conf
    - source: salt://memcached/files/memcached.conf
    - template: jinja
