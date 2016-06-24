FROM ruby:alpine
MAINTAINER Z.d. Peacock <zdp@thoomtech.com>

COPY ["Gemfile", "Gemfile.lock", "/src/"]

WORKDIR /src/

RUN bundle install

ENTRYPOINT ["strandom"]
