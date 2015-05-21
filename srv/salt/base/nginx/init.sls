# Recommend state structure
# 1. Package should be installed.
# 2. Service (if any) should be running.
# 3. Service configuration (if any) should be present.

nginx-repo:
  pkgrepo.managed:
    - name: deb http://nginx.org/packages/mainline/ubuntu/ trusty nginx
    - key_url: http://nginx.org/keys/nginx_signing.key
    - file: /etc/apt/sources.list.d/nginx.list
    - require_in:
      - pkg: nginx

nginx:                                    # State id can be used as package name.
  pkg:
    - installed                           # It should be installed.
  service:
    - running                             # It should be running.
  watch:
    - file: /etc/nginx/                   # It should be restarted on config change.

/etc/nginx/:                              # State id can be used as file (or directory) name.
  file:
    - recurse                             # It should be copied recursively
    - source: salt://nginx/etc/nginx/     #   from salt data
    - template: jinja                     #   with jinja preprocessing.
