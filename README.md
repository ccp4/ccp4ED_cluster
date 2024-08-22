# ccp4ED_cluster
## cloud login
`CCP4-ED-openrc.sh` needs to be sourced every time to use elasticluster as it allows to setup the openstack credentials.
Just change the line : `export OS_USERNAME="<fedid>"`with your username.
Then `source CCP4-ED-openrc.sh` which should prompt you for your openstack password.

## elasticluster config
`config` are configuration files to be put in `~/.elasticluster/config` and contains info about cloud setup and cluster setup.


In `playbooks/play.yml` change all occurrences of the line `- user: 'fedid'` with your username.


`playbooks` are ansible tasks. A playbook can be run with :

```
ansible-playbook --private-key=<path_to_key> --inventory=~/.elasticluster/storage/<cluster>.inventory --become --become-user=root playbooks/play.yml
```

there are scripts in `scripts` used by the playbooks to install fftw and felix.


## running a job on slurm
`scripts/run_felix.sh` is a bash script than can be run with slurm.

```
cd /home/$USER/Documents/git/ccp4/src/felix/samples/GaAs_short/
sbatch /home/$USER/run_felix.sh
```
