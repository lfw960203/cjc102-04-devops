#!/bin/bash
if [ `docker ps | grep flask-web | wc -l`  = 1 ]
then
        docker stop flask-web
        docker rm -f flask-web || true
fi
