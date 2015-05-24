# Recommend state structure
# 1. Package should be installed.
# 2. Service (if any) should be running.
# 3. Service configuration (if any) should be present.

nginx:                                    # State id can be used as package name.
  pkg.installed:                          # It should be installed.
    - name: nginx
  service.running:                        # It should be running.
    - require:                            # It requires
      - pkg: nginx                        #   to install nginx first.
    - watch:
      - file: /etc/nginx/                   # It should be restarted on config change.

nginx_conf:                               # State id can be used as file (or directory) name.
  file.recurse:                           # It should be copied recursively
    - name: /etc/nginx/                   #   to specified location
    - source: salt://nginx/files/         #   from this location
    - template: jinja                     #   with jinja preprocessing.
