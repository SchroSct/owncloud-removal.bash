#!/bin/bash
tmpdir=$(mktemp -d)
if cd "${tmpdir}"
then
   apt-get download owncloud-files
   for i in owncloud-files*
   do
      mapfile -t ownfiles < <(dpkg -c "$i" | grep "/var/www/owncloud/" | sed -e 's/.* \.//g' | grep -v -e "owncloud/$" -e "data/$" -e "config/$" -e "apps/$" )
      for f in "${ownfiles[@]}"
      do
         echo "Removing $f"
         rm -rfv "$f"
      done
   done
   rm "$i"
   cd /tmp/
fi
rmdir "${tmpdir}"
