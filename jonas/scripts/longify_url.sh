#!/usr/bin/env bash

#
# Longify url - reveal the location of a link that has been shortened.
#
# Description:
#
#   This script will accept an url which could be masquerading its final url by a link shortner (e.g bit.ly) service
#   or being redirected (301, 307, or 308). It will make a curl request and folloy any redirect(s) and
#   save each site's location header. Once it has followed all redirects it will print the path(s) it has
#   followed.
#
# Example usage:
#
#   ./longify_url <url>
#
# Example response:
#
#   Displaying in chronological order (first redirect to final url)
#
#   Starts at:      bit.ly/amtrak-valentines
#   Redirects to:   https://www.usatoday.com/story/travel/2022/02/10/amtrak-deal-valentines-offer-sale/6741296001/
#   Redirects to:   https://eu.usatoday.com/story/travel/2022/02/10/amtrak-deal-valentines-offer-sale/6741296001/
#

if [[ ( $@ == "--help") ||  $@ == "-h" ]]; then
	echo "Usage: $0 <url>"
	exit 0
fi

if [[ -z $1 ]]; then
	echo "Usage: $0 [arguments]"
	exit 0
fi

# Catch case if argument does not validate a regular looking url.
is_url_regex="^(http:\/\/www\.|https:\/\/www\.|http:\/\/|https:\/\/)?[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$"
if [[ ! $1 =~ $is_url_regex ]]; then
    echo "The <url> is not a valid url."
    exit 0
fi

url=$1

# Make curl request and grab the location header of each redirect and final url.
# Then removes the location header and just leaves the values.
locations=$(curl --head --location --silent $url | grep --ignore-case '^location' | cut --delimiter=' ' --fields=2)

echo -e "\nDisplaying in chronological order (first redirect to final url)\n"

printf "Starts at:\t%s\n" $url

for location in $locations ; do
    # printf, for some reason, does not handle format specifiers + argument for the locations list.
    # Using regular echo instead. It does what it needs to do anyways.
    echo -e "Redirects to:\t$location"
done
