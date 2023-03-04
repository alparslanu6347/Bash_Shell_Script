##Delete the directories older than 2 days
ls -ltr /archive | awk '{print $9}' > /scripts/dirs
for i in 'cat /scripts/dirs'; do
   STARTTIME=$(date +%s -d"$i 00:00:00")
   ENDTIME=$(date +%s)
   echo $((ENDTIME-STARTTIME)) | awk '{print int($1/60)}' > /scripts/value
   COUNT='cat /scripts/value'
   if [ $COUNT -gt 2880 ]; then
      echo "Directories are older than 2days $1" > /scripts/joblog
      rm -rf /archive/$i
   fi
done 
