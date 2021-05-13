#!/bin/bash

for zone in {1..6}
    do 
     curl -s -XPOST -d 00 $1/zones/1$zone/pr   
    done

curl -s $2/api/v1/commands/?cmd=stop