#!/usr/bin/env bash

set -e
set -x

ACCESS_KEY=
SECRET_KEY=

REGION=ap-southeast-1
PRIVATE_KEY=devopsassessment


ansible-playbook \
    -i "localhost," -c local \
    ./ansible/playbooks/setup_host.yml \
    --extra-vars "access=${ACCESS_KEY} secret=${SECRET_KEY} region=${REGION} private_key=${PRIVATE_KEY}"