base:
  '*':
    - motd
    - user
    - nginx
    - memcached
    - cron

prod:
  '*':
    - motd
    - user
    - nginx
    - memcached
    - cron

test:
  '*':
    - motd
    - user
    - nginx
    - memcached
    - cron

dev:
  '*':
    - motd
    - user
    - nginx
    - memcached
    - cron
