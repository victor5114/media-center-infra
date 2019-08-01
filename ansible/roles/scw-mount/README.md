# nvme-ebs-mount

Mounts an GCE Disk.

## Requirements

None.

## Role Variables

- `gce_device` the name of the GCE Disk attachment (defaults to `data`)
- `gce_mount` the directory where the GCE Disk is mounted (defaults to `/data`)
- `gce_fs` the filesystem to mount (defaults to `xfs`)

## Dependencies

None.

## Example Playbook

    - hosts: server
      roles:
      - role: gce-mount
        vars:
          gce_device: backup
          gce_mount: /data/backup

# Author Information

[Equancy](http://www.equancy.com)
