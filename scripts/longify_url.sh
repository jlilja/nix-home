#!/bin/bash

#
# This script will accept an url which could be masquerading its final url by a link shortner (e.g bit.ly) service
# or being redirected (301, 307, or 308). It will make a curl request and folloy any redirect(s) and
# save each site's location header. Once it has followed all redirects it will print the path(s) it has
# followed.
#
# example usage:
#
#   ./longify_url bit.ly/amtrak-valentines
#
# example response:
#
#   Displaying in chronological order (first redirect to final url)
#
#   Starts at:	    bit.ly/amtrak-valentines
#   Redirects to:	https://www.usatoday.com/story/travel/2022/02/10/amtrak-deal-valentines-offer-sale/6741296001/
#   Redirects to:	https://eu.usatoday.com/story/travel/2022/02/10/amtrak-deal-valentines-offer-sale/6741296001/
#

url=$1

# Make curl request and grab the location header of each redirect and final url.
# Then removes the location header and just leaves the values.
locations=$(curl -ILs $url | grep -i '^location' | cut -d' ' -f2)

echo -e "\nDisplaying in chronological order (first redirect to final url)\n"

printf "Starts at:\t%s\n" $url

for location in $locations ; do
    # printf, for some reason, does not handle format specifiers + argument for the locations list.
    # Using regular echo instead. It does what it needs to do anyways.
    echo -e "Redirects to:\t$location"
done
