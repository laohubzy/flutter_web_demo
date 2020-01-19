FROM cirrusci/flutter:beta
USER root
WORKDIR /app
COPY . /app
RUN flutter --version \
&& flutter config --enable-web \
&& flutter build web  


FROM nginx
RUN mkdir /app
COPY /app/build/web /home/app/
COPY conf.nginx /etc/nginx/nginx.conf

EXPOSE 80
