FROM cirrusci/flutter:beta
USER root
RUN mkdir /app
# WORKDIR /app 
RUN flutter build web 
COPY . /app
 


FROM nginx
COPY /app/build/web /home/app/
COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
