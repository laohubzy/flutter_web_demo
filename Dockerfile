FROM cirrusci/flutter:stable
USER root
WORKDIR /app
COPY pubspec*.yaml ./
RUN flutter pub get
Run flutter build web

FROM nginx
RUN mkdir /app
COPY --from=0 /app/build/web /app
COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
