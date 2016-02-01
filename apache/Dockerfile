FROM debian
MAINTAINER webunitydesign
RUN apt-get update && apt-get install -y apache2 php5 libapache2-mod-php5
EXPOSE 80
CMD /usr/sbin/apache2ctl -D FOREGROUND
