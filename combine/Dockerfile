FROM    ubuntu:12.04
MAINTAINER none "invalid@invalid.invalid"

RUN rm /etc/apt/sources.list
RUN echo deb http://archive.ubuntu.com/ubuntu precise main universe multiverse > /etc/apt/sources.list

RUN apt-get update

RUN apt-get install -y ruby rubygems
RUN gem install bundler
RUN mkdir /opt/sinatra

RUN gem install haml
RUN gem install thin
RUN gem install unicorn
RUN gem install foreman
RUN gem install rdoc
RUN gem install sinatra

RUN apt-get install nginx -y

# RUN echo "daemon off;" >> /etc/nginx/nginx.conf

RUN rm /etc/nginx/sites-enabled/default
ADD localhost.conf /etc/nginx/sites-enabled/localhost
ADD run_nginx.sh /bin/

RUN chmod u+x /bin/run_nginx.sh

ADD serve.rb /opt/sinatra/serve.rb
ADD Gemfile /opt/sinatra/Gemfile
ADD Procfile /opt/sinatra/Procfile
ADD config.ru /opt/sinatra/config.ru
ADD config /opt/sinatra/config
ADD .env /opt/sinatra/.env
ADD run_unicorn.sh /bin/


EXPOSE 80

CMD /bin/run_nginx.sh
