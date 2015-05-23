base:
  '*':
    - pkgrepo
    - motd
    - user
    - nginx
    - memcached
    - postgresql
    - cron

prod:
  '*':
    - pkgrepo
    - motd
    - user
    - nginx
    - memcached
    - postgresql
    - cron

test:
  '*':
    - pkgrepo
    - motd
    - user
    - nginx
    - memcached
    - postgresql
    - cron

dev:
  '*':
    - pkgrepo
    - motd
    - user
    - nginx
    - memcached
    - postgresql
    - pgbouncer
    - cron
