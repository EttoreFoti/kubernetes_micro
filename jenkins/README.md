Jenkins YAML templates to a complete K8s Deploy
=========

In this folder we will find all the necessary YAML templates to bootstrap a Jenkins instance on Kubernetes as a Pod.

Notes:
------------
- In this deployment we're using a local storage PV, obviously in can be changed on demand just by creating a different PV and editing the PVC.
- We're exposing Jenkins through a NodePort service, it can be exposed in many other ways, such as an ingress rule if we have a Domain Name to associate.
- $ kubectl exec -it jenkins-559d8cd85c-cfcgk cat  /var/jenkins_home/secrets/initialAdminPassword -n jenkins-ns ==> that's the command we can use the get the temporary password Jenkins generate.
