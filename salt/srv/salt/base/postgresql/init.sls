postgresql:
  pkg.installed:
    - pkgs:
      - postgresql-9.4
      - postgresql-contrib-9.4
      - postgresql-server-dev-9.4
  service.running:
    - name: postgresql
    - require:
      - pkg: postgresql
    - watch:
      - file: postgresql-conf

postgresql-conf:
  file.recurse:
    - source: salt://postgresql/files/
    - name: /etc/postgresql/9.4/main/
    - template: jinja

example:
  postgres_user.present:
    - password: example
  postgres_database.present:
    - owner: example
