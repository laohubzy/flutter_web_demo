FROM cirrusci/flutter:beta
USER root
WORKDIR .
RUN flutter --version
RUN flutter config --enable-web
RUN flutter pub get
RUN flutter build web


FROM nginx
COPY build/web /home/app/
COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
