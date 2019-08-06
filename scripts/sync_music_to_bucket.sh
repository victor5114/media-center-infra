#!/bin/bash

rclone sync ~/Music/LibraryVictor/ \
    --exclude Non-Album/ \
    --exclude Compilation/ \
    --exclude .DS_Store \
    scaleway:media-bucket/music