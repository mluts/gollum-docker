FROM ruby:2.4

RUN apt-get -y update && apt-get -y install libicu-dev cmake

RUN bundle config --global frozen 1

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock /usr/src/app/
RUN bundle install

COPY . /usr/src/app

EXPOSE 3000

VOLUME ["/data"]

CMD bundle exec unicorn --listen 0.0.0.0:3000
