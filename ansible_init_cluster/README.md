Ansible Init Cluster (K8s) 
=============================

### Description ###
This is a playbook to setup from the ground up a k8s cluster on Ubuntu/Debian servers using Kubeadm,
you only need to update the inventory file and run it.

For any information on the single role please go to the specific README.md

### Testing ###
All three of the roles written inside this playbook are getting tested with Molecule and Vagrant.

To try it you just need to navigate inside the folder of role you want to test run: 

    $ molecule test

### Execution ###

All you need to do is populate correctly the various hot_vars files to map your hosts and then run:

    $ ANSIBLE_VERBOSITY=1 ansible-playbook --ask-pass --ask-become-pass -i hosts/all.yml init.yml

### Issues, Suggestions and Requests ###

Feel free to open issues or ask for new functionality or suggest better ways to achieve the same goal.

