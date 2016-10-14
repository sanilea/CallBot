FROM ruby:2.3

RUN mkdir -p /usr/src/app/
WORKDIR /usr/src/app

COPY Gemfile* /usr/src/app/
RUN bundle install

ENV IS_DOCKER "YES"

EXPOSE 3000

CMD bundle exec rails c
