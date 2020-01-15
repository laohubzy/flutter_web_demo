FROM nginx

COPY build/web /usr/share/nginx/html/
COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
