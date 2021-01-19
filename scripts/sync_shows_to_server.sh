#!/bin/bash

rclone -vv sync /Volumes/SG-VICTOR/TV\ Shows/ \
    --ignore-existing \
    --exclude Compilation/ \
    --exclude .DS_Store \
    media-server-data-folder:data/shows
