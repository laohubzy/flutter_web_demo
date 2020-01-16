FROM cirrusci/flutter:stable
USER root
RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN flutter channel beta
RUN flutter upgrade
RUN flutter config --enable-web
RUN flutter pub get
Run flutter build web

FROM nginx
COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
