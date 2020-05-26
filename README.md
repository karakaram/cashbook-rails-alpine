# cashbook-rails-docker-alpine

## Usage

1. cp docker-compose-env-default docker-compose-env
1. Edit docker-compose-env
1. `docker-compose run --rm app ./bin/rails db:create`
1. `docker-compose run up`
1. Visit http://localhost:3000 on your browser

## Generate ActiveAdmin Resources 

Create Model

```
docker-compose exec app rails generate model ExpenseType name:string order:integer
docker-compose exec app rails generate model IncomeType name:string order:integer
```

Migrate Database

```
docker-compose exec app rails db:migrate
```

Create Admin

```
docker-compose exec app rails generate active_admin:resource ExpenseType
docker-compose exec app rails generate active_admin:resource IncomeType
```
