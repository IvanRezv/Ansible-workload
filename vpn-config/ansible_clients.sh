#!/bin/bash

function ANSIBLE_IVAN_R () {
  ansible-playbook -i inventory.ini --ask-vault-pass --extra-vars 'private_key=private_key_ivan public_key=public_key_ivan' playbook-client.yaml
}

function ANSIBLE_NIKITA_CH () {
  ansible-playbook -i inventory.ini --ask-vault-pass --extra-vars 'private_key=private_key_nikita public_key=public_key_nikita' playbook-client.yaml
}

ANSIBLE_IVAN_R
ANSIBLE_NIKITA_CH
