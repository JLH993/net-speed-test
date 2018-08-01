#!/bin/bash

## run speed test, post results in Mbps, change url if in another state.
SPEED=$(curl -m 30 -w '%{speed_download}\n' -o /dev/null -s  https://tx-us-ping.vultr.com/vultr.com.100MB.bin) ; BSPEED=$(expr $(expr $(echo $SPEED | cut -d'.' -f1) / 1024 / 1024) \* 8) ; echo $BSPEED" Mbps"
