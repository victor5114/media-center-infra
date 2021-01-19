#!/bin/bash

rclone -vv sync /Volumes/SG-VICTOR/Movies/ \
    --ignore-existing \
    --exclude Compilation/ \
    --exclude .DS_Store \
    media-server-data-folder:data/movies
