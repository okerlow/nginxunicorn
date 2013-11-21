#!/bin/sh

set -e

mkdir -p /run/unicorn/app/myapp/
/usr/local/bin/foreman start -d /opt/sinatra
