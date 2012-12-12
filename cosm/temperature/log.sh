#!/bin/bash
####################################################
# Please customize these values appropriately:
LOCATION=/home/pi/cosm/tempretare
LOCATION=/home/pi/cosm/temperature
# VALUE is in degrees celcius
VALUE=$( cat /sys/class/thermal/thermal_zone0/temp | awk -v FS=" " '{print $1/1000""}' )
####################################################
TIME=`/bin/date -u +%FT%XZ`
if [[ "$VALUE" == "" ]]
then
VALUE=0
fi
echo "$TIME,$VALUE" >> $LOCATION/cosm.csv
exit 0
