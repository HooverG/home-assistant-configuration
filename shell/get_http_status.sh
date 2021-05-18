#!/bin/bash
# chmod 755 this file

curl -s -k -o /dev/null -w '%{http_code}' $1