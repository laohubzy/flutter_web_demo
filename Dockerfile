FROM cirrusci/flutter:beta
USER root
RUN mkdir /app
WORKDIR /app 
COPY . /app 
RUN flutter config --enable-web \
&& flutter build web 

 


FROM nginx
COPY /app/build/web /home/app/
COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
