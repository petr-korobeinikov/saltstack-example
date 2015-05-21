cron:                     # Cron daemon should be installed and running.
  pkg:
    - installed
  service:
    - running

date >> /tmp/crondates:   # Run "date >> /tmp/crondates"
  cron.present:           # Task should present in crontab (see "crontab -l")
    - user: root          #   under root
    - minute: '*/1'       #   every minute
