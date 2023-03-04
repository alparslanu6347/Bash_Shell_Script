#!/bin/bash
#Author: Nixware

#cp /var/log/messages /home/aydintokus/file-script/messages

grep -i error /home/aydintokus/file-script/messages > fail-output.sh

grep -i fail /home/aydintokus/file-script/messages > fail-output.sh

grep -i warn /home/aydintokus/file-script/messages > fail-output.sh
