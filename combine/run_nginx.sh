#!/bin/bash

nginx
sh /bin/run_unicorn.sh &
tail -F /var/log/nginx/{access,error}.log
