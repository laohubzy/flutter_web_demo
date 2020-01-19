FROM cirrusci/flutter:beta
USER root
# RUN mkdir /app

WORKDIR /app 
COPY . /app
RUN ls \
&& flutter --version \
&& ls \
&& flutter config --enable-web 
# \
# && flutter build web 

 


FROM nginx
# COPY conf.nginx /etc/nginx/nginx.conf
RUN mkdir /app
RUN ls 
WORKDIR /app 
RUN ls 
# COPY ./build/web /home/app/
EXPOSE 80
