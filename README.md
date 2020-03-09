# nephelaiio.foreman_repo

[![Build Status](https://travis-ci.org/nephelaiio/ansible-role-foreman-repo.svg?branch=master)](https://travis-ci.org/nephelaiio/ansible-role-foreman-repo)
[![Ansible Galaxy](http://img.shields.io/badge/ansible--galaxy-foreman_repo-blue.svg)](https://galaxy.ansible.com/nephelaiio/foreman_repo/)

An [ansible role](https://galaxy.ansible.com/nephelaiio/foreman_repo) to install and configure foreman server packages

## Role Variables

| required | variable                        | description                                          | default                              |
| ---      | ---                             | ---                                                  | ---                                  |
| no       | foreman_hosts_manage            | manage /etc/hosts entries                            | yes                                  |
| no       | foreman_http_port               | tcp port for http requests                           | 80                                   |
| no       | foreman_https_port              | tcp port for https requests                          | 443                                  |
| no       | foreman_admin_user              | foreman admin username                               | admin                                |
| *yes*    | foreman_admin_pass              | foreman admin password                               | admin                                |
| no       | foreman_db_host                 | db host address                                      | "{{ ansible_default_ipv4.address }}" |
| no       | foreman_db_name                 | database name                                        | foreman                              |
| no       | foreman_db_user                 | database user                                        | foreman                              |
| *yes*    | foreman_db_pass                 | database password                                    | foreman                              |
| no       | foreman_installer_extra_options | append command line arguments to foreman-installer   | []                                   |
| no       | foreman_installer_options       | override command line arguments to foreman-installer | see [defaults](/defaults/main.yml)   |

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
