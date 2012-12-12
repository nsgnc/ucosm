#!/bin/bash
####################################################
# Please customize these values appropriately:
LOCATION=/home/pi/cosm/load
#VALUE=$( uptime | awk -v FS="[, ]" '{print $18}' )
# alternatively:
VALUE=$( cat /proc/loadavg | awk {'print $1'} )
####################################################
TIME=`/bin/date -u +%FT%XZ`
if [[ "$VALUE" == "" ]]
then
VALUE=0
fi
echo "$TIME,$VALUE" >> $LOCATION/cosm.csv
exit 0
