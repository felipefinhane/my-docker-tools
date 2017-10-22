# base image
FROM ruby:2.3.3

# update and install libs
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# create workdir
RUN mkdir /myapp

# set workdir
WORKDIR /myapp

# add gemfile
ADD Gemfile /myapp/Gemfile

# add gemfile.dock
ADD Gemfile.lock /myapp/Gemfile.lock

# run bundle install
RUN bundle install

# add * for workdir
ADD . /myapp
