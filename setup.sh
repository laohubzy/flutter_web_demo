#!/usr/bin/env bash
image_version=`date +%Y%m%d%H%M`;
# path = `/home/jenkins/jenkins_home/workspace/flutter_web_demo`;

# cd $path;
# ls;

# 关闭flutter_web容器
# docker stop flutter_web || true

# 删除flutter_web容器
# docker rm flutter_web || true

# 删除flutter/web镜像
# docker rmi --force $(docker images | grep flutter/web | awk '{print $3}')
docker pull cirrusci/flutter;

docker run --rm -it -v ${PWD}:/build --workdir /build cirrusci/flutter:stable flutter build web;

# 构建flutter/web镜像
docker build . -t flutter/web:$image_version;
# FROM cirrusci/flutter
# 查看镜像列表
docker images;

# 基于flutter/web 镜像 构建一个容器 flutter_web
# docker run -p 9527:80 -d --name flutter_web flutter/web:$image_version;
# 查看日志
# docker logs flutter_web;

#删除build过程中产生的镜像 
# docker rmi $(docker images -f "dangling=true" -q)

# 对空间进行自动清理
# docker system prune -a -f
# # # 删除shop/admin镜像
# # docker rmi --force $(docker images | grep flutter/web | awk '{print $3}')
# # 构建shop/admin:$image_version镜像
# docker build . -t flutter/web:$image_version;
# # 查看镜像列表
# docker images;
# # 基于shop/admin 镜像 构建一个容器 flutter_web
# docker run -p 9527:80 -d --name flutter_web flutter/web:$image_version;
# # 查看日志
# docker logs flutter_web;
# #删除build过程中产生的镜像    #docker image prune -a -f
# docker rmi $(docker images -f "dangling=true" -q)
# # 对空间进行自动清理
# docker system prune -a -f
