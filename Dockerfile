FROM jacobat/ruby:2.1.4

RUN apt-get update
RUN apt-get install -y build-essential libsqlite3-dev

RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install

ADD . /app

EXPOSE 3000

CMD bin/rails server
