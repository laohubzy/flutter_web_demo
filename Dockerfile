FROM cirrusci/flutter:stable
WORKDIR /app
COPY pubspec*.yaml ./
RUN flutter pub get
RUN flutter clean
Run flutter build web

FROM nginx
RUN mkdir /app
COPY --from=0 /app/build/web /app
COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
