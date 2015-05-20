SaltStack example based on Vagrant
==================================

Getting started
---------------

1. Install vagrant from https://www.vagrantup.com.
2. Get the source code of this repo.
3. Copy ``Vagrantfile.dist`` to ``Vagrantfile`` and run ``vagrant up``

Directory structure
-------------------

```
├── etc
│   └── salt                    # Salt (minion) configuration
└── srv
    ├── pillar                  # Salt data
    │   ├── base                #   for "base" environment
    │   ├── dev                 #   for "development" environment
    │   ├── prod                #   for "production" environment
    │   └── test                #   for "test" environment
    └── salt                    # Salt states
        └── base                #   "base" used by default
```

Very basic example: message of the day
--------------------------------------

1. Log in to your virtual machine ``vagrant ssh``.
2. Became a root: ``sudo su - ``
3. Call ``salt-call state.sls motd`` to raise motd state.

It should produce output like this:

```
local:
----------
          ID: /etc/motd
    Function: file.managed
      Result: True
     Comment: File /etc/motd updated
     Started: 11:45:30.441914
    Duration: 48.488 ms
     Changes:
              ----------
              diff:
                  New file
              mode:
                  0644

Summary
------------
Succeeded: 1 (changed=1)
Failed:    0
------------
Total states run:     1
```

More complex example: installing nginx
--------------------------------------

1. Call ``salt-call state.highstate`` to raise all available states.

It should produce the following output:

```
...
          ID: nginx
    Function: pkg.installed
      Result: True
     Comment: The following packages were installed/updated: nginx
     Started: 12:01:52.293880
    Duration: 189716.635 ms
     Changes:

...

----------
          ID: nginx
    Function: service.running
      Result: True
     Comment: The service nginx is already running
     Started: 12:05:02.201175
    Duration: 31.232 ms
     Changes:
...
```

TODO
----

* Apt-repository example.
* Postgres example with different hba.
* Crontab with state.
* Crontab with file.
* Memcached with different conf for dev/prod envs.
