#DevOps assessment


This is a set of Ansible playbooks to setup a dokku host on AWS. 

To setup a host and install dokku, execute the following scripts:

```
sh ./bin/create_dokku_host.sh
```
Please note that AWS credentials, region and a valid private key file need to be set in the script.


```
sh ./bin/setup_dokku.sh
```
This script uses a public key file that enables the deployment. It can be found under resources.
In order to access the host via private key file, it needs to be set in the script.


Please note, once the setup is done navigate to the link provided by the playbook and hit the same button. This completes the setup and disables the webadmin console.  






















