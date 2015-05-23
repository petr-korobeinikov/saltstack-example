nginx-repo:
  pkgrepo.managed:
    - name: deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx
    - key_url: http://nginx.org/keys/nginx_signing.key
    - file: /etc/apt/sources.list.d/nginx.list
    - require_in:
      - pkg: nginx

postgresql-repo:
  pkgrepo.managed:
    - name: deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main 9.4
    - key_url: https://www.postgresql.org/media/keys/ACCC4CF8.asc
    - file: /etc/apt/sources.list.d/postgresql.list
    - require_in:
      - pkg: postgresql
