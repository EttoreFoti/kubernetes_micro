ensure_ssh_user
=========

This role simply creates the ssh user and adds it to sudo (passwordless) and exchange ssh keys.

Requirements
------------

Ansible 2.1 or higher

Role Variables
--------------

- default_ssh_user: is the username of the user to create
- default_ssh_user_keypath: is the local path of the key.pub to exchange.

All variables can be set under defaults/main.yml when not set in group_vars/all.yml


License
-------

MIT

Author Information
------------------

I'm a self-taught Junior DevOps starting to make some small projects that might help both new and experienced used in various field while i'm studying.
