#!/bin/bash

UPDATES=`yum check-update -q | awk '{print $1}'`
COUNT=`printf "%s\n" "$UPDATES" | grep -v "^$" | wc -l`
YUM=`printf "%s\n" "$UPDATES" | grep -v "^$" | grep yum`
echo '--------------------------------------------------------------------------------'
echo " Weekly Update Notification for `hostname`"
echo "   -> $COUNT update(s) available"
if [ -n "$YUM" ]; then
echo '   -> IMPORTANT: A Yum update is available. Perform this separately and first.'
fi
echo '--------------------------------------------------------------------------------'
printf "%s\n" "$UPDATES"