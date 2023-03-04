#!/bin/bash

## Saving the output of a code block to a file

# SUCCESS=0
# E_NOARGS=65
# if [ -z "$1" ]
# then
# echo "Usage: `basename $0` rpm-file"
#  exit $E_NOARGS
# fi
# { # Begin code block.
#  echo
#  echo "Archive Description:"
#  rpm -qpi $1 # Query description.
#  echo
#  echo "Archive Listing:"
#  rpm -qpl $1 # Query listing.
#  echo
#  rpm -i --test $1 # Query whether rpm file can be installed.
#  if [ "$?" -eq $SUCCESS ]
#  then
#  echo "$1 can be installed."
#  else
#  echo "$1 cannot be installed."
#  fi
#  echo # End code block.
# } > "$1.test" # Redirects output of everything in block to file.
# echo "Results of rpm test in file $1.test"
# # See rpm man page for explanation of options.
# exit 0


## ASCII comparison.

veg1=carrots
veg2=tomatoes
if [[ "$veg1" < "$veg2" ]]
then
 echo "Although $veg1 precede $veg2 in the dictionary,"
 echo -n "this does not necessarily imply anything "
 echo "about my culinary preferences."
else
 echo "What kind of dictionary are you using, anyhow?"
fi