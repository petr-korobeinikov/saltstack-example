nginx-repo:
  pkgrepo.managed:
    - name: deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx
    - key_url: http://nginx.org/keys/nginx_signing.key
    - file: /etc/apt/sources.list.d/nginx.list
    - require_in:
      - pkg: nginx
