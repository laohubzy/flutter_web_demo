FROM cirrusci/flutter:latest
# /home/cirrus/sdks/flutter
# FROM ontolabs/flutter-web

USER root

WORKDIR /app 
COPY . /app
RUN ls \
&& which flutter \
&& flutter config --enable-web  \
&& flutter --version

RUN flutter pub get
RUN /bin/bash -c "sudo /home/cirrus/sdks/flutter/bin/flutter build web"

FROM nginx
COPY conf.nginx /etc/nginx/nginx.conf
RUN mkdir /app
RUN ls 
# WORKDIR /app 
# RUN ls 
# 将上阶段产物复制
COPY --from=0 /app/build/web /app
WORKDIR /app 
RUN ls 
# COPY ./build/web /home/app/
EXPOSE 80
