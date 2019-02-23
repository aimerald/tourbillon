FROM ruby:2.6

ENV APP_ROOT /app
WORKDIR ${APP_ROOT}

COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock

RUN bundle -j4

COPY . .