FROM cirrusci/flutter:beta
USER root
RUN mkdir /app
COPY . /app 
WORKDIR /app 
RUN flutter config --enable-web 
RUN flutter build web 

 


FROM nginx
COPY conf.nginx /etc/nginx/nginx.conf
WORKDIR /app 
COPY /app/build/web /home/app/
EXPOSE 80
