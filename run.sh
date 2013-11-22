#!/bin/sh

set -e

nginx_container=$(sudo docker run -d -v /run/unicorn -p 80:80 -t invalid/nginx)
sudo docker run -d -volumes-from $nginx_container -t invalid/myapp
