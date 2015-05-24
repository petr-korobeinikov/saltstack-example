cron:                     # Cron daemon should be installed and running.
  pkg.installed:
    - name: cron
  service:
    - running
    - require:
      - pkg: cron

crontab:
  cron.file:
    - name: salt://cron/crontab
    - user: root

date >> /tmp/crondates:   # Run "date >> /tmp/crondates"
  cron.present:           # Task should present in crontab (see "crontab -l")
    - user: root          #   under root
    - minute: '*/1'       #   every minute
