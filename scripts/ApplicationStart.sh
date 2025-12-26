#!/bin/bash
docker run -p 80:5000 --name flask-web -d 827350540951.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-04-ecr-repo:latest

sleep 20s
