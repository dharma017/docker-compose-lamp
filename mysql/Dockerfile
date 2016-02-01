FROM debian
MAINTAINER webunitydesign
COPY run.sh /root/run.sh
ENV mysqlpassword=root
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && apt-get install -y sed mysql-server mysql-client && \
  sed -i "s/127.0.0.1/0.0.0.0/g" /etc/mysql/my.cnf && chmod +x /root/run.sh
EXPOSE 3306
CMD /root/run.sh
