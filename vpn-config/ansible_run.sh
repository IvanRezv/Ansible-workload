#!/bin/bash

function ANSIBLE_RUN () {
  ansible-playbook -i inventory.ini --ask-vault-pass --extra-vars 'private_key=private_key_ivan public_key=public_key_ivan' playbook-client.yaml
}

ANSIBLE_RUN
