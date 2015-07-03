util:
  pkg.installed:
    - pkgs:
      - vim
      - curl
      - wget
      - git-core

/home/vagrant/.gitconfig:
  file.managed:
    - source: salt://util/files/gitconfig
