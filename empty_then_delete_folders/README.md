# Empty recursively then delete parent folder
Best used for deleting multiple directories in pantheon file system.

# Usage
The script utilizes RSYNC to recursively empty the targed directories then will SFTP and `rmdir` the targeted directories

Open a terminal and run

* mkdir empty_folder

`export ENV=env` Replace with the site environment, usually dev, test, or live

`export SITE=uuid` Replace with the site UUID, which you can find from the Site Dashboard URL or terminus site:info $sitename --field=id

* Edit delete.sh and add the folders to be deleted, and the file path if needed.
* run chmod +x delete.sh
* run `./delete.sh`

