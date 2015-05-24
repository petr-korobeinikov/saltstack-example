pgbouncer:
  pkg.installed:
    - name: pgbouncer
  service.running:
    - require:
      - pkg: pgbouncer
    - watch:
      - file: /etc/pgbouncer/

pgbouncer_conf:
  file.recurse:
    - name: /etc/pgbouncer/
    - source: salt://pgbouncer/files/
    - template: jinja
