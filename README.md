# ccp4ED_cluster

`config` are configuration files to be put in `~/.elasticluster/config` and contains info about cloud setup and cluster setup.

`playbooks` are ansible tasks meant to be run with :
```
ansible-playbook --private-key=<path_to_key> --inventory=~/.elasticluster/storage/<cluster>.inventory --become --become-user=root playbooks/play.yml
```

`scripts` are scripts than are used to install and run felix.
