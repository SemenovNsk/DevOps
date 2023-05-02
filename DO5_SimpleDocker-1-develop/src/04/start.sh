#!/bin/bash

service nginx start
spawn-fcgi -p 8080 ./hello
nginx -s reload
tail -f /dev/null