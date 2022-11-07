# Sonatafy challenge

## System dependencies

- Ruby 2.7.6
- PostgreSQL 12.4
- Redis 5

## Configuration

Use `rbenv`. See https://github.com/rbenv/rbenv

## Installing

```sh
# Clone the repo
git clone <this repo>

# Install the gems
bundle install

# Create and seed the DB
rails db:setup
```

## Database creation

```sh
sudo -u postgres createuser <DATABASE_USER>
sudo -u postgres createdb sonatafy_development --owner=<DATABASE_USER>
sudo -u postgres psql
```

Then in the Postgres CLI:

```sql
ALTER USER <DATABASE_USER> WITH PASSWORD <DATABASE_USER_PASSWORD>;
ALTER USER <DATABASE_USER> CREATEDB;
```

And finally:

```sh
rails db:create
```

### Database initialization

```sh
rails db:setup
```

## Running in local

```sh
# Start the dev server
rails s
```

## Services

```sh
# Start sidekiq
bundle exec sidekiq
```

## Test suite

```sh
# Run tests
bundle exec rspec
```
