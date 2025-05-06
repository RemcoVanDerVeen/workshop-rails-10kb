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
docker compose run --rm backend bundle exec rspec spec/workshop_specs
```

Run linter:
```bash
docker compose run --rm backend bundle exec rubocop
```

Do not edit the .rubocop.yml or any of the test files if you wish to play fair.
Bonus points for inventing new greasy ways to pollute this app.

## Other Assignments
Making fun of Rails is fun, but it is also good to know how to actually work with it.
Use this guide for help:
    - https://guides.rubyonrails.org/getting_started.html

Try one of the following things:
1) Add an endpoint for leveling up a hero.
2) 
    a) Add a migration, model, controller, and view to support a Campaign interface.
    b) A campaign should have many :quests
3) Add CSS to lighten up the place and get to know how to Asset Pipeline works.
4) Add a 'campaign' layout that only works for quest and quest reward pages.
5) Think of a way to view a hero's state within a campaign they are a part of. Add the necessary files and tables.
6) Annoyingly, the plural form of "hero" is "heroes", not "heros". Rails has a way to accommodate this. Fix this.

## Thanks
Thank you for trying out Rails. I'm sure there are better tutorials out there.
