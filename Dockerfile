FROM cirrusci/flutter:beta
# /home/cirrus/sdks/flutter
# FROM ontolabs/flutter-web

USER root

WORKDIR /app 
COPY . /app
RUN ls \
&& which flutter \
&& flutter config --enable-web  \
&& flutter --version \
&& flutter doctor \
&& flutter pub get \
&& flutter build web --release

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
