FROM cirrusci/flutter:stable
USER root
RUN mkdir -p /app
WORKDIR /app
COPY . /app \
    && flutter packages get \
    && flutter config --enable-web \
    && flutter clean \
    && flutter build web


FROM nginx

COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
