FROM ruby:2.4

MAINTAINER Lukasz Ozimek <ozim@ozim.eu>

CMD mkdir /home/app

WORKDIR /home/app

ENV RACK_ENV development

ADD setup.sh /home

EXPOSE 3000

CMD ["/bin/bash", "/home/setup.sh"]
