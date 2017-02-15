FROM ubuntu:16.04

LABEL maintainer="Daniel Ortíz <daniel.ortiz@grvtylabs.com>" \
      thanks_to_marcelocg="https://github.com/marcelocg/phoenix-docker" \
      thanks_to_appcues="https://github.com/appcues/docker-elixir-dev"

# Fix lang to UTF-8. Elixir requires UTF-8
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV DEBIAN_FRONTEND noninteractive

# Update and install software
RUN apt-get update && apt-get install -y \
    make \
    sudo \
    apt-utils \
    build-essential \
    curl \
    wget \
    git \
    libssl1.0.0 \
    postgresql-client \
  && apt-get autoclean \
  && apt-get autoremove -y \
  && rm -rf /var/lib/{apt,dpkg,cache,log}/

# Download and install Erlang apt repo package
RUN wget http://packages.erlang-solutions.com/erlang-solutions_1.0_all.deb \
    && dpkg -i erlang-solutions_1.0_all.deb \
    && rm erlang-solutions_1.0_all.deb

# Add node and npm repository
RUN curl -sL https://deb.nodesource.com/setup_6.x | sudo -E bash -

# For some reason, installing Elixir tries to remove this file  and if it doesn't
# exist, Elixir won't install. We will create it. Thanks Daniel Berkompas for this tip.
# http://blog.danielberkompas.com
RUN touch /etc/init.d/couchdb

# install latest elixir package
RUN apt-get update && apt-get install -y \
    elixir \
    erlang-dev \
    erlang-dialyzer \
    erlang-parsetools \
    nodejs \
  && apt-get autoclean \
  && apt-get autoremove -y \
  && rm -rf /var/lib/{apt,dpkg,cache,log}/

ENV PHOENIX_VERSION 1.2.1

# install the Phoenix Mix archive
RUN mix archive.install --force \
    https://github.com/phoenixframework/archives/raw/master/phoenix_new-$PHOENIX_VERSION.ez
RUN mix phoenix.new -v
RUN mix local.hex --force
RUN mix local.rebar --force
RUN npm install -g brunch
# CMD ["mix", "archive.install", "--force", "https://github.com/phoenixframework/archives/raw/master/phoenix_new-$PHOENIX_VERSION.ez"]
# CMD ["mix", "phoenix.new", "-v"]
# CMD ["mix", "local.hex", "--force"]
# CMD ["mix", "local.rebar", "--force"]
# CMD ["npm", "install", "-g", "brunch"]

# ONBUILD WORKDIR /usr/src/app
#
# ONBUILD COPY *.js* /usr/src/app/
# ONBUILD CMD ["npm", "install"]
#
# ONBUILD ENV MIX_ENV prod
# ONBUILD COPY mix.* /usr/src/app/
# ONBUILD COPY config /usr/src/app/
# ONBUILD CMD ["mix", "do", "deps.get,", "deps.compile"]
