#!/bin/bash

curl -s $1/api/v1/commands/?cmd=stop

PARAM=('pr' 'vo' 'tr' 'bs' 'ch' 'pr')
VAL=('01' '13' '09' '12' '05' '00')

for zone in {1..6}
    do 
        for i in "${!PARAM[@]}"
            do
                curl -s -XPOST -d ${VAL[i]} $2/zones/1$zone/${PARAM[i]}
            done
    done