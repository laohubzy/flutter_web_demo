FROM cirrusci/flutter:stable
USER root
RUN mkdir -p /app
WORKDIR /app
COPY . /app
RUN flutter config --enable-web
RUN sudo flutter pub get
RUN sudo flutter build web


FROM nginx

COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
