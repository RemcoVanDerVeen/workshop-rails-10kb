# README

## Setup
How to set up this application:
```bash
docker compose build --no-cache
docker compose run --rm backend bundle install
docker compose run --rm backend bundle exec rails db:create db:migrate db:seed
docker compose up backend
```

The application will be available at `localhost:3000`.


## The Goal
All tests are failing. Use whatever you need to fix tests.

Run tests:
```bash
docker compose run --rm backend bundle exec rspec
```

Run linter:
```bash
docker compose run --rm backend bundle exec rubocop
```

Do not edit the .rubocop.yml or any of the test files if you wish to play fair.
Bonus points for inventing new greasy ways to pollute this app.