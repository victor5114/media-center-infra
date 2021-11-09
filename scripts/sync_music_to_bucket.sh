#!/bin/bash

rclone -vvv sync /Volumes/SG-VICTOR/LibraryVictor/ \
    --ignore-existing \
    --exclude Compilation/ \
    --exclude .DS_Store \
    --no-update-modtime \
    media-server-data-folder:media/music
    #scaleway:media-bucket/music
