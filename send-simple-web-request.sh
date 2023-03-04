#!/bin/bash


# Bash treats some paths as special and can do some network communication by writing to
# /dev/{udp|tcp}/host/port. Bash cannot setup a listening server, but can initiate a connection, and for TCP can
# read the results at least.
# For example, to send a simple web request one could do:


exec 3</dev/tcp/www.google.com/80
printf 'GET / HTTP/1.0\r\n\r\n' >&3
cat <&3

# {
#  echo "contents of home directory"
#  ls ~
# } > output.txt