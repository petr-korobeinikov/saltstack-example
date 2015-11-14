{% from "memcached/map.jinja" import memcached with context %}

memcached:
  pkg.installed:
    - name: {{ memcached.package }}
  service.running:
    - name: {{ memcached.service }}
    - require:
      - pkg: memcached
    - watch:
      - file: memcached_conf

memcached_conf:
  file.managed:
    - name: {{ memcached.config }}
    - source: salt://memcached/files/memcached.conf
    - template: jinja
