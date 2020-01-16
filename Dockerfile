FROM cirrusci/flutter:stable
USER root
RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN flutter config --enable-web
RUN flutter pub get
RUN flutter build apk


FROM nginx

COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
