# Empty recursively then delete parent folder
Best used for deleting multiple directories in pantheon file system.

# Usage
Open a terminal and run
`export ENV=env` ### Replace with the site environment, usually dev, test, or live
`export SITE=uuid` ### Replace with the site UUID, which you can find from the Site Dashboard URL or terminus site:info $sitename --field=id

* Open delete.sh and add the folders to be deleted
* run chmod +x delete.sh
* run `./delete.sh`

