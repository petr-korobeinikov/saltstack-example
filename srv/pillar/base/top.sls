base:
  '*':
    - motd
    - nginx
    - memcached
    - postgresql

prod:
  '*':
    - motd
    - nginx
    - memcached
    - postgresql

test:
  '*':
    - motd
    - nginx
    - memcached
    - postgresql

dev:
  '*':
    - motd
    - nginx
    - memcached
    - postgresql
