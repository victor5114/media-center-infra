#!/bin/bash

rclone -vv sync /Volumes/SG-VICTOR/LibraryVictor/ \
    --ignore-existing \
    --exclude Compilation/ \
    --exclude .DS_Store \
    media-server-data-folder:media/music
    #scaleway:media-bucket/music
