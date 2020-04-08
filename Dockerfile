From centos:latest
RUN yum -y install httpd;
RUN yum -y install git;
RUN mkdir /root/web
RUN cd /root/web/
RUN git clone https://github.com/pramod1990/CICD.git
RUN cp "/CICD/dragon.html" "/var/www/html/"
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
EXPOSE 80
