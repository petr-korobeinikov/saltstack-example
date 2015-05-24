/etc/motd:                            # State id is /etc/motd. Also used as a file name.
  file.managed:                       # This file is under salt control.
    - source: salt://motd/files/motd  # File path relative to file_roots.
    - template: jinja                 # Use jinja template engine.
