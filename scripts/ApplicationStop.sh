#!/bin/bash
if [ `docker ps | grep flask-web | wc -l`  = 1 ]
then
        docker stop falsk-web
        docker rm  flask-web
fi
