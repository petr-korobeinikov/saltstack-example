{% from "pgbouncer/map.jinja" import pgbouncer with context %}

pgbouncer:
  pkg.installed:
    - name: {{ pgbouncer.package }}
  service.running:
    - name: {{ pgbouncer.service }}
    - require:
      - pkg: pgbouncer
    - watch:
      - file: pgbouncer_conf

pgbouncer_conf:
  file.recurse:
    - name: {{ pgbouncer.config }}
    - source: salt://pgbouncer/files/
    - template: jinja
