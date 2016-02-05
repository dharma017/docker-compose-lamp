FROM debian
COPY ["init.sh", "/root/"]
MAINTAINER webunitydesign
RUN apt-get update && apt-get install -y apache2 php5 libapache2-mod-php5 && chmod +x /root/init.sh
EXPOSE 80
CMD /root/init.sh
