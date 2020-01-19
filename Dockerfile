FROM cirrusci/flutter:beta
USER root
RUN mkdir /app
COPY . /app 
WORKDIR /app 
RUN ls \
&& ls \
&& flutter config --enable-web \
&& flutter build web 

 


FROM nginx
COPY conf.nginx /etc/nginx/nginx.conf
RUN ls 
WORKDIR /app 
COPY ./build/web /home/app/
EXPOSE 80
