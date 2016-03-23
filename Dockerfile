FROM ruby:2.3.0
#FROM frolvlad/alpine-ruby
MAINTAINER Professeur Chen

# Run updates
RUN apt-get update && apt-get install -y --no-install-recommends build-essential git nodejs imagemagick && rm -rf /var/lib/apt/lists/*
RUN gem install bundler
# Set up working directory
RUN mkdir /myapp
WORKDIR /myapp

# Set up gems
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ENV LANG C.UTF-8
EXPOSE 3000
ADD . /myapp
