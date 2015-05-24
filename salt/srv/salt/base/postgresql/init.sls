{% from "postgresql/map.jinja" import postgresql with context %}

postgresql:
  pkg.installed:
    - pkgs:
      - {{ postgresql.server }}
      - {{ postgresql.server_dev }}
      - {{ postgresql.contrib }}
  service.running:
    - name: {{ postgresql.service }}
    - require:
      - pkg: postgresql
    - watch:
      - file: postgresql-conf

postgresql-conf:
  file.recurse:
    - source: salt://postgresql/files/
    - name: {{ postgresql.config }}
    - template: jinja

example:
  postgres_user.present:
    - password: example
  postgres_database.present:
    - owner: example
