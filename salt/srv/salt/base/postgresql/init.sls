postgresql-repo:
  pkgrepo.managed:
    - name: deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main 9.4
    - key_url: https://www.postgresql.org/media/keys/ACCC4CF8.asc
    - file: /etc/apt/sources.list.d/postgresql.list
    - require_in:
      - pkg: postgresql

postgresql:
  pkg.installed:
    - pkgs:
      - postgresql-9.4
      - postgresql-contrib-9.4
      - postgresql-server-dev-9.4
  service:
    - name: postgresql
    - running
  watch:
    - file: /etc/postgresql/9.4/main/

/etc/postgresql/9.4/main/:
  file:
    - recurse
    - source: salt://postgresql/etc/postgresql/9.4/main
    - template: jinja
