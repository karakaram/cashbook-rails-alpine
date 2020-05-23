# cashbook-rails-docker-alpine

## Usage

1. cp docker-compose-env-default docker-compose-env
1. Edit docker-compose-env
1. `docker-compose run --rm app ./bin/rails db:create`
1. `docker-compose run up`
1. Visit http://localhost:3000 on your browser
