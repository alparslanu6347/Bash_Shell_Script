#!/bin/bash

find /home/aydintokus/old-files -mtime +150 -exec ls -l {} \; 
#150 günden daha az zamandaki eski dosyaları listele

find /home/aydintokus/old-files -mtime +150 -exec rm {} \;
#150 günden daha az zamandaki eski dosyaları sil

#Find and rename old files

find . -mtime +90 -exec mv {} {}.old \;