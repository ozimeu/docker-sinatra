#!/bin/bash
if [ "$RACK_ENV" == "production" ];
then
  bundle install --without development
  config.ru -p 3000
else
  bundle install
  gem install shotgun
  shotgun config.ru -p 3000 -o '0.0.0.0'
fi
