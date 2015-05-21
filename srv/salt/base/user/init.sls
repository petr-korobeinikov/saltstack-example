www:                  # State id used as user's name and group's name.
  group:              # Group "www"
    - present         #   should present.
  user:               # User "www"
    - present         #   should present
    - home: /var/www  #   with custom homedir
    - groups:         #   in group
      - www           #     "www".
    - require:
      - group: www    # Create group "www" first.
