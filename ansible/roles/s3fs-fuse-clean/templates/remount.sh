seq `mount | grep /mnt/s3 | wc -l` | xargs -I -- sudo fusermount -uz /mnt/s3

# Remount disk
s3fs \
-o use_cache={{ s3fs_fuse_cache_folder }} \
-o url={{ s3fs_fuse_url }} \
{% for option in s3fs_fuse_option_flags %}
-o {{ option }} \
{% endfor %}
{{ s3fs_fuse_bucket }} {{ s3fs_fuse_mount_point }}