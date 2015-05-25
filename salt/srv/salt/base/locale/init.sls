/etc/default/locale:                    # May be absent
  file.managed                          #   so create it if any

en_US.UTF-8:
  locale.present

ru_RU.UTF-8:
  cmd.run:                              # Workaround
    - name: locale-gen ru_RU.UTF-8      #   with direct call locale-gen

C.UTF-8:
  locale.system
