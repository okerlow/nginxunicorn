FROM    ubuntu:12.04
MAINTAINER none "invalid@invalid.invalid"

RUN rm /etc/apt/sources.list
RUN echo deb http://archive.ubuntu.com/ubuntu precise main universe multiverse > /etc/apt/sources.list

RUN apt-get update
RUN apt-get install nginx -y

# RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN rm /etc/nginx/sites-enabled/default
ADD localhost.conf /etc/nginx/sites-enabled/localhost
ADD run_nginx.sh /bin/

RUN chmod u+x /bin/run_nginx.sh

EXPOSE 80

CMD /bin/run_nginx.sh
