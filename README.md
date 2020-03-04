# nephelaiio.foreman_repo

[![Build Status](https://travis-ci.org/nephelaiio/ansible-role-foreman-repo.svg?branch=master)](https://travis-ci.org/nephelaiio/ansible-role-foreman-repo)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-foreman_repo-blue.svg)](https://galaxy.ansible.com/nephelaiio/foreman_repo/)

An [ansible role](https://galaxy.ansible.com/nephelaiio/foreman_repo) to install and configure foreman server packages

## Role Variables

| required | variable             | description               | default                              |
| ---      | ---                  | ---                       | ---                                  |
| no       | foreman_docker_image | image to deploy           | quay.io/foreman/foreman              |
| no       | foreman_port         | port to bind to container | 8080                                 |
| no       | foreman_db_host      | db host address           | "{{ ansible_default_ipv4.address }}" |
| no       | foreman_db_name      | database name             | foreman                              |
| no       | foreman_db_user      | database user             | foreman                              |
| *yes*    | foreman_db_pass      | database password         | N/A                                  |

## Example Playbook

```
- hosts: foreman
  roles:
     - role: nephelaiio.foreman
       vars:
         foreman_db_pass: supersecret
```

## Testing

Please make sure your environment has [docker](https://www.docker.com) installed in order to run role validation tests. Additional python dependencies are listed in the [requirements file](https://github.com/nephelaiio/ansible-role-requirements/blob/master/requirements.txt)

Role is tested against the following distributions (docker images):
  * Ubuntu Bionic
  * Debian Buster
  * CentOS 7
  * CentOS 8

You can test the role directly from sources using command ` molecule test `

## License

This project is licensed under the terms of the [MIT License](/LICENSE)
