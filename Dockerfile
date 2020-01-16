FROM cirrusci/flutter:beta-web
USER root
RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN flutter config --enable-web
RUN flutter pub get
RUN flutter build web


FROM nginx

COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
