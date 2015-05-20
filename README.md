SaltStack example based on Vagrant
==================================

Getting started
---------------

1. Install vagrant from https://www.vagrantup.com.
2. Get the source code of this repo.
3. Run ``vagrant up``

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
