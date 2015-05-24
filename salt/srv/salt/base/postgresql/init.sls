postgresql:
  pkg.installed:
    - pkgs:
      - postgresql-9.4
      - postgresql-contrib-9.4
      - postgresql-server-dev-9.4
  service:
    - name: postgresql
    - running
    - require:
      - pkg: postgresql
    - watch:
      - file: /etc/postgresql/9.4/main/

/etc/postgresql/9.4/main/:
  file:
    - recurse
    - source: salt://postgresql/files/
    - template: jinja

example:
  postgres_user.present:
    - password: example
  postgres_database.present:
    - owner: example
