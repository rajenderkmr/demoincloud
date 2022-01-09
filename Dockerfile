FROM CENTOS:latest 
MAINTAINER rajenderkmr@gmail.com
RUN yum install -y httpd \
zip \
unzip
ADD https://www.free-css.com/assets/files/free-css-templates/download/page264/pullo.zip /var/www/html/
WORKDIR /var/www/html
RUN unzip pullo.zip
RUN cp -rvf pullo/* .
RUN rm -rf pullo pullo.zip
CMD ["usr/sbin/htttpd", "D","FOREGROUND"]
EXPOSE 80
