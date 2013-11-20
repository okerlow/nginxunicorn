#!/bin/bash

nginx
tail -F /var/log/nginx/{access,error}.log
