#!/bin/bash

#
# This script will accept an url which could be masquerading its final url by a link shortner service
# or being redirected (301, 307, or 308). It will make a curl request and folloy any redirect(s) and
# save each site's location header. Once it has followed all redirects it will echo the path it has
# followed.
#

url=$1

# Make curl request and grab the location header of each redirect and final url.
# Then removes the location header and just leaves the values.
locations=$(curl -ILs $url | grep -i '^location' | cut -d' ' -f2)

printf "\nDisplaying in chronological order (first redirect to final url)\n\n"

printf "Starts at:\t$url\n"

for location in $locations ; do
    echo -e "Redirects to:\t$location"
done
