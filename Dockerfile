FROM ubuntu:16.04

LABEL maintainer "Daniel Ortíz <daniel.ortiz@grvtylabs.com>"
# Obtained and edited using:
# https://github.com/marcelocg/phoenix-docker
# https://github.com/appcues/docker-elixir-dev

# Elixir requires UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8

# update and install software
RUN apt-get update && apt-get upgrade -y \
    # install system depedencies
    && apt-get install -y curl wget git make sudo apt-utils \
    # download and install Erlang apt repo package
    && wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb \
    && dpkg -i erlang-solutions_1.0_all.deb \
    && apt-get update \
    && rm erlang-solutions_1.0_all.deb \
    # For some reason, installing Elixir tries to remove this file
    # and if it doesn't exist, Elixir won't install. So, we create it.
    # Thanks Daniel Berkompas for this tip.
    # http://blog.danielberkompas.com
    && touch /etc/init.d/couchdb \
    # install latest elixir package
    && apt-get install -y elixir erlang-dev erlang-dialyzer erlang-parsetools \
    # clean up after ourselves
    && apt-get clean

ENV PHOENIX_VERSION 1.2.1

# install the Phoenix Mix archive
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phoenix_new-$PHOENIX_VERSION.ez
RUN mix local.hex --force && \
    mix local.rebar --force

# install Node.js (>= 6.0.0) and NPM in order to satisfy brunch.io dependencies
# See http://www.phoenixframework.org/docs/installation#section-node-js-5-0-0-
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash - && sudo apt-get install -y nodejs
RUN npm install -g brunch

ONBUILD WORKDIR /usr/src/app

ONBUILD COPY *.js* /usr/src/app/
ONBUILD RUN npm install

ONBUILD ENV MIX_ENV prod
ONBUILD COPY mix.* /usr/src/app/
ONBUILD COPY config /usr/src/app/
ONBUILD RUN mix do deps.get, deps.compile
