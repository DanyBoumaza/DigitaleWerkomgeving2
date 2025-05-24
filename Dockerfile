FROM ubuntu:20.04

ENV DEBIAN_FRONTEND=noninteractive


RUN apt update
RUN apt install -y apache2

WORKDIR /var/www/html

RUN date > /var/www/html/buildtime.txt

COPY html/ /var/www/html/

EXPOSE 80/tcp

CMD ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
