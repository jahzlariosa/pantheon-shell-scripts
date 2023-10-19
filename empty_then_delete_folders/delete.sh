#!/bin/bash

# Define the list of folders to empty and delete
folders=("0001" "0002" "0003")

# Iterate through the list of folders
for folder in "${folders[@]}"; do
  # Empty the folder on the remote server using rsync
  rsync -rLvz --size-only --checksum --ipv4 --progress -a --delete -e 'ssh -p 2222' empty_folder/ --temp-dir=~/tmp/ "$ENV.$SITE@appserver.$ENV.$SITE.drush.in:files/$folder/"

  # Log in to SFTP
  sftp -o Port=2222 "$ENV.$SITE@appserver.$ENV.$SITE.drush.in" <<EOF
  rmdir 'files/$folder'
  bye
EOF
done
