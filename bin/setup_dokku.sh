#!/usr/bin/env bash

set -e
set -x

PRIVATE_KEY=./ansible/resources/devopsassessment.pem

ansible ec2 -i ./ansible/hosts/assessment_host \
    --private-key $PRIVATE_KEY \
    -u ubuntu --sudo -m raw -a "test -e /usr/bin/python || (apt -y update && apt install -y python-minimal)"

ansible-playbook -u ubuntu \
    -i ./ansible/hosts/assessment_host \
    --private-key $PRIVATE_KEY \
    ./ansible/playbooks/setup_dokku.yml