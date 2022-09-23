#!/bin/bash

function GIT_CHECKOUT () {
  ansible-playbook -i inventory.ini --ask-vault-pass --extra-vars 'private_key=private_key_ivan public_key=public_key_ivan' playbook-client.yaml
}