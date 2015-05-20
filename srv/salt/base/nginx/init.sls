# Recommend state structure
# 1. Package should be installed.
# 2. Service (if any) should be running.
# 3. Service configuration (if any) should be present.

nginx:
  pkg:
    - installed
  service:
    - running
  watch:
    - file: /etc/nginx/

/etc/nginx/:
  file:
    - recurse
    - source: salt://nginx/etc/nginx/
    - template: jinja
