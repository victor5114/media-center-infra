#!/bin/bash

rclone sync ~/Music/LibraryVictor/ \
    --ignore-existing \
    --exclude Compilation/ \
    --exclude .DS_Store \
    scaleway:media-bucket/music
