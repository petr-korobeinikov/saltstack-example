pgbouncer:
  pkg.installed:
    - name: pgbouncer
  service:
    - running
    - require:
      - pkg: pgbouncer
    - watch:
      - file: /etc/pgbouncer/

/etc/pgbouncer/:
  file:
    - recurse
    - source: salt://pgbouncer/files/
    - template: jinja
