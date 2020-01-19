FROM cirrusci/flutter:beta
USER root
RUN mkdir -p /app
WORKDIR /app 
COPY . /app \
&& flutter config --enable-web \
&& flutter build web 

 


FROM nginx
WORKDIR /app
COPY /app/build/web /home/app/
COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
