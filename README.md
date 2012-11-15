#Basic Rails app with devise, bootstrap, Rails admin and acceptance specs

[![Build Status](https://secure.travis-ci.org/dovadi/basic_app.png?branch=master)](http://travis-ci.org/dovadi/basic_app)

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

### Reminders

Replace secret token

    rake secret

Think of email and host settings in environment rb's:

    ActionMailer::Base.smtp_settings

and in devise initializer

    config.mailer_sender = "please-change-me-at-config-initializers-devise@example.com"
    
Rails admin only for

    user.admin?