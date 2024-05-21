# macvm-starter
Starter docker image for macvm-provisioning

Initial binary.
Contains all the necessary for macvm-provisioning packages
entrypoint.sh clones Github repo macvm-provisioning
Prerequisites to start the image:
You have already deployed and run at least two virtual machines on your macbook M1
These virtual machines are amd64 architecture
They have the same user password (which will be used for provisioning). Default user: dsilevi

To be used in laboratory's experiments with K8S full cluster deployed within kubeadm.
