#Basic Rails app with devise and acceptance specs

## Setup

### Prepare

    cp /config/database.yml.example /config/database.yml
    bundle
    rake db:create
    rake db:migrate

### Verify

    bundle exec guard

### Run

    rails server