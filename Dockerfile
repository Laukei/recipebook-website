# syntax=docker/dockerfile:1
FROM ruby:3.2-alpine

WORKDIR /app

RUN gem install bundler

RUN apk add --no-cache gcc musl-dev linux-headers build-base tzdata bash

COPY . .
RUN bundle install


EXPOSE 3000
ENTRYPOINT ["rails", "s", "-b", "0.0.0.0"]
