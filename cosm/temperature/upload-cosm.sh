#!/bin/bash
####################################################
# Please customize these values appropriately:
LOCATION=/home/pi/cosm/temperature
API_KEY='enter-api-key'
FEED_ID='enter-feed-id'
DATASTREAM_ID='Cpu_Temp'
####################################################
COSM_URL=http://api.cosm.com/v2/feeds/$FEED_ID/datastreams/$DATASTREAM_ID/datapoints.csv
#sleep 2 # gives any data logging scheduled at the same time a chance to run
#echo $COSM_URL
if [[ -e $LOCATION/cosm.csv ]]; then
curl -s --request POST --header "X-ApiKey: $API_KEY" --data-binary @$LOCATION/cosm.csv $COSM_URL > /dev/null;# -v
fi

if [[ $? -eq 0 ]] && [[ -e $LOCATION/cosm.csv ]]
then
rm $LOCATION/cosm.csv
#echo "Would delete file now."
fi
#echo "Done"
