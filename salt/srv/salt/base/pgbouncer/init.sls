pgbouncer:
  pkg:
    - installed
  service:
    - running
    - require:
      - pkg: pgbouncer
  watch:
    - file: /etc/pgbouncer/

/etc/pgbouncer/:
  file:
    - recurse
    - source: salt://pgbouncer/etc/pgbouncer/
    - template: jinja
