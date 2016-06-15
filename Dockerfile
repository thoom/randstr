FROM ruby:alpine

COPY ["Gemfile", "Gemfile.lock", "/usr/src/app/"]

WORKDIR /usr/src/app/

RUN bundle install

ENTRYPOINT ["strandom"]
