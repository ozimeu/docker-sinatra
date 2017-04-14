# docker-sinatra

This repo combines some basic bash commands with a simple [Docker](https://www.docker.com/) image file based on Ruby to help you start using Docker containers while building [Sinatra](https://github.com/sinatra/sinatra) apps. I personally use it in development and hopefully you'll find it useful somehow.

## Stack

There's not a lot to say about the stack, as it rather depends on your app. The only thing you should know is that this container is currently prepared to run with Ruby 2.4 version. I assume that if you're crafting a Rack-based Sinatra app, your repo contains `config.ru` file.

## Quick setup guide

There's nothing fancy here if you're familiar with [Docker](https://www.docker.com/). To run your container just exec the following command:

```
docker run -n app_name \
	-p 3000:3000 \
    -v $(pwd):/home/app \
    -e RACK_ENV=production \
    -d ozim/sinatra
```

You can use the `RACK_ENV` variable to customize the environment your app is running.

By passing another value to `-v`, you can define the exact directory you want to mount in your container. Here it defaults to your current working directory, assuming that you'll be working with the code from where you've run the container.

Feel free if you have any ideas on how to improve docker-sinatra.
