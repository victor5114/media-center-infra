#!/bin/bash

rclone sync ~/Music/LibraryVictor/ \
    --exclude Compilation/ \
    --exclude .DS_Store \
    scaleway:media-bucket/music
