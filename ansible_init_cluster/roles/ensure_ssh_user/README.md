ensure_ssh_user
=========

This role simply creates the ssh user and adds it to sudo and echange ssh keys.

Requirements
------------

Ansible 2.1 or higher

Role Variables
--------------

- default_ssh_user: is the username of the user to create
- default_ssh_user_keypath: is the local path of the key.pub to exchange.

All variables can be set under defaults/main.yml

Dependencies
------------

A list of other roles hosted on Galaxy should go here, plus any details in regards to parameters that may need to be set for other roles, or variables that are used from other roles.

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

MIT

Author Information
------------------

I'm a self-taught Junior DevOps starting to make some small projects that might help both new and experienced used in various field while i'm studying.
