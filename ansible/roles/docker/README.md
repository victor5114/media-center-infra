# docker

Installs and configures Docker CE engine.

## Requirements

None.

## Role Variables

Docker daemon configuration:

- `docker_storage_driver` sets the storage driver
- `docker_hosts` a list of listeners for the docker daemon
- `docker_dns` an IP address list for DNS servers
- `docker_data_root` the path to store docker data files (images, containers and volumes)

## Dependencies

None.

## Example Playbook

    - hosts: containers
      gather_facts: yes
      roles:
      - role: docker
        vars:
          docker_dns: 8.8.8.8
          docker_data_root: /data/docker

# Author Information

[Equancy](http://www.equancy.com)
