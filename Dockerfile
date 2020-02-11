FROM nginx
COPY conf.nginx /etc/nginx/nginx.conf
RUN mkdir /app
WORKDIR /app
COPY ./build/web /app/
EXPOSE 80
