FROM cirrusci/flutter:beta
USER root
RUN mkdir /app
COPY . /app 
WORKDIR /app 
RUN flutter config --enable-web \
&& flutter build web 

 


FROM nginx
COPY conf.nginx /etc/nginx/nginx.conf
WORKDIR /app 
COPY ./build/web /home/app/
EXPOSE 80
