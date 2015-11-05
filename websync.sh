#!/bin/bash
# Fetch changes from Github
git pull

# Sync website directory with webserver directory, excluding files not to be put on server
rsync -rtv --exclude=".git" --exclude="divshot.json" --exclude=".gitignore" --exclude="websync.sh". /var/www/hackutk.com/html/
