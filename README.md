# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
3.0.2

* Rails version
6.1.4.1

* System dependencies

* Configuration
Using RVM:

.ruby-version: 3.0.2
.ruby-gemset: coding_test

* Database creation
Actually using SQLITE.

* Database initialization
rake db:setup

In case of failure:
rails db:drop
rails db:create
rails db:migrate
rails db:seed

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

run rails server:
rails s

* Notes
Using Devise gem for Authentication.
Using CanCanCan gem for Authorization (view /models/abiliti.rb for more information about ACLs).

Seed users:
name: 'John', email: 'john@example.com', role: user, password: '123456789'
name: 'Peter', email: 'peter@example.com', role: reader, password: '123456789'
name: 'Mary', email: 'mary@example.com', role: admin, password: '123456789'

* ...
