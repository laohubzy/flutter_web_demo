FROM cirrusci/flutter:stable
WORKDIR /app
COPY pubspec*.yaml ./
RUN flutter clean
RUN flutter packages get
Run flutter build web

FROM nginx
RUN mkdir /app
COPY --from=0 /app/build/web /app
COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
