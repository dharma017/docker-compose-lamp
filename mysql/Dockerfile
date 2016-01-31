FROM debian
MAINTAINER webunitydesign
ENV mysqlpass=root
ENV DEBIAN_FRONTEND noninteractive
RUN echo mysql-server-5.0 mysql-server/root_password password $mysqlpass | debconf-set-selections
RUN echo mysql-server-5.0 mysql-server/root_password_again password $mysqlpass | debconf-set-selections
RUN apt-get update && apt-get install -y sed mysql-server mysql-client
RUN sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/my.cnf
EXPOSE 3306
CMD mysqld_safe
