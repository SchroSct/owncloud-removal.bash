# owncloud-removal.bash
Removes owncloud-files files that will trip up the install

When I run an owncloud update via the packages, it always complains that the pre-existing files can't be overwritten, blah blah.  This script should remove everything contained in owncloud-files except for owncloud/, owncloud/data/, owncloud/config/, and owncloud/apps/ including any additional apps added, removing only official owncloud apps.
