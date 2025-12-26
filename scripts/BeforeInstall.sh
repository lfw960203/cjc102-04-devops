#!/bin/bash

aws ecr get-login-password --region ap-northeast-1 | docker login --username AWS --password-stdin 827350540951.dkr.ecr.ap-northeast-1.amazonaws.com

if [ `docker images | grep 827350540951.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-04-ecr-repo | wc -l`  = 1 ]
then
        docker rmi 827350540951.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-04-ecr-repo
        docker pull 827350540951.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-04-ecr-repo:latest
else
        docker pull 827350540951.dkr.ecr.ap-northeast-1.amazonaws.com/cjc102-04-ecr-repo:latest
fi
