#!/bin/bash

## Creation commands
function secret_create {
  ansible-vault create main.yml
  ansible-vault edit main.yml
}

## Secrets example
function adding_secrets {
  # Password for Unix gitlab-runner user
  echo "runner_password: passwd" > main.yml
  # Token from gitlab for runner register
  echo "reg_token: token" > main.yml
  ansible-vault encrypt main.yaml
}

## Ansible-vault password for decrypt main.yaml - "password"
