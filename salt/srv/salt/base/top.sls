base:
  '*':
    - pkgrepo
    - util
    - locale
    - motd
    - user
    - java
    - nginx
    - memcached
    - postgresql
    - cron

prod:
  '*':
    - pkgrepo
    - util
    - locale
    - motd
    - user
    - java
    - nginx
    - memcached
    - postgresql
    - cron

test:
  '*':
    - pkgrepo
    - util
    - locale
    - motd
    - user
    - java
    - nginx
    - memcached
    - postgresql
    - cron

dev:
  '*':
    - pkgrepo
    - util
    - locale
    - motd
    - user
    - java
    - nginx
    - memcached
    - postgresql
    - pgbouncer
    - cron
