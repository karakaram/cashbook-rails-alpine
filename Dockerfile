FROM ruby:2.7.1-alpine3.11

WORKDIR /myapp

COPY . .

RUN apk update \
    && apk add --no-cache --virtual=.build-deps \
    build-base \
    && apk add --no-cache \
    postgresql-dev \
    tzdata \
    nodejs~=12 \
    yarn \
    && bundle install \
    && yarn install \
#    && rails assets:precompile \
    && apk del .build-deps

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]
