gitlab-runner binary role
=========
[![License](https://img.shields.io/badge/license-Apache-green.svg?style=flat)](https://raw.githubusercontent.com/lean-delivery/ansible-role-gitlab-runner/master/LICENSE)
![Ansible](https://img.shields.io/badge/dynamic/json.svg?label=min_ansible_version&url=https%3A%2F%2Fgalaxy.ansible.com%2Fapi%2Fv1%2Froles%2F29089%2F&query=$.min_ansible_version)

A brief description of the role goes here.
## Summary

This Ansible role has the following features:

 - Install gitlab-runner
 - Configure 2 runners with docker and shell executors

You can fork and custom all, what you want

Requirements
------------

- Version of the ansible for installation: 2.8
 - **Supported OS**:
   - EL (RedHat, CentOS)
     - 7, 8
   - Amazon2 Linux
   - Ubuntu
     - 16.04
     - 18.04
   - Debian
     - 8, 9
Role Variables
--------------

- required
  - `reg_token`  **need to set**

  Specific token from Gitlab CI/CD settings for runner configuring
  - `runner_password`  **need to set**

  - Password for Unix gitlab-runner user, for perfect switching

- defaults

  - `runner_user`: **default:** gitlab-runner
  - `home_dir`: **default:** /home/gitlab-runner
  - `arch`: **default:** amd64
  - `git_url`: **default:** https://gitlab.com/


  - docker runner configure block:
    - `docker_image_executor`: **default:**  docker:stable
    - `docker_description`: **default:**  docker runner for gitlab
    - `docker_tags`: **default:**  prod, docker-ansi
    - `docker_run_untagged`: **default:**  true


  - shell runner configure block:
    - `shell_description`: **default:**  shell runner for gitlab
    - `shell_tags`: **default:**  prod, shell-ansi
    - `shel_run_untagged`: **default:**  false



Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      gather_facts: yes
      become: yes

      roles:
         - gitlab-runner-binary-ansible-role

License
-------

[![License](https://img.shields.io/badge/license-Apache-green.svg?style=flat)](https://raw.githubusercontent.com/lean-delivery/ansible-role-gitlab-runner/master/LICENSE)

Author Information
------------------
Ivan Rezvetsov `ivanrezv@icloud.com`
