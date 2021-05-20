#!/bin/bash
# chmod 755 this file

case ${1} in 
   -a)for i in {1..6}
        do
            curl -s -XPOST -d ${2} $3/zones/1${i}/pr
        done 
      ;; 
   *)curl -s -XPOST -d ${2} $3/zones/1${1}/pr
      ;; 
esac