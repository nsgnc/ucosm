#!/bin/bash
####################################################
# Please customize these values appropriately:
LOCATION=/home/pi/cosm/room
# VALUE is in degrees celcius
sudo modprobe w1-gpio
sudo modprobe w1-therm
VALUE=$( $LOCATION/temp.py )
####################################################
TIME=`/bin/date -u +%FT%XZ`
if [[ "$VALUE" == "" ]]
then
VALUE=0
fi
echo "$TIME,$VALUE" >> $LOCATION/cosm.csv
exit 0
