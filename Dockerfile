FROM cirrusci/flutter:beta
USER root
&& mkdir -p /app
WORKDIR /app
COPY . /app
RUN flutter --version \
&& flutter config --enable-web \
&& flutter build web


FROM nginx

COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
