base:
  '*':
    - pkgrepo
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
    - locale
    - motd
    - user
    - java
    - nginx
    - memcached
    - postgresql
    - pgbouncer
    - cron
