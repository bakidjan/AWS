FROM ubuntu
MAINTAINER diallo "diallodejdan@gmail.com"
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git
RUN rm -Rf /var/www/html
RUN git clone https://github.com/diranetafen/static-website-example /var/www/html /var/www/html
EXPOSE 80
ENTRYPOINT ["/usr/sbin/nginx", "-g", "daemon off;"]
#docker build -t webapp .