base:
  '*':
    - motd
    - user
    - nginx
    - memcached
    - postgresql
    - cron

prod:
  '*':
    - motd
    - user
    - nginx
    - memcached
    - postgresql
    - cron

test:
  '*':
    - motd
    - user
    - nginx
    - memcached
    - postgresql
    - cron

dev:
  '*':
    - motd
    - user
    - nginx
    - memcached
    - postgresql
    - pgbouncer
    - cron
