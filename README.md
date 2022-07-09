# README

It is a small Ruby on Rails notes application, with the following functionality:

## Manage Sessions

* Login/Logout

## CRUD a note (has title, text, user)

* When a note is added/updated/deleted then the user should receive a flash message.
* Validate the notes (no empty fields allowed).

## Manage Access to Notes

* Seed the application with additional users.
* Create roles USER, READER And ADMIN.
* Create a config screen so that ADMIN can be assigned a role.
* Restrict Access by Role, so users with the USER role can create a and read their own notes, READER role can see all notes and users with ADMIN can fully administer all notes (CRUD everything).

## Things you may want to cover:

### Ruby version

3.0.2

### Rails version

6.1.4.1

### System dependencies

* Devise for Authentication
* CanCanCan for Authorization (view /models/abiliti.rb for more information about ACLs).
* Kaminari fot Pagination.
* Twitter Bootstrap layout.
* AdminLTE twitter bootstrap based template.

### Using RVM

> .ruby-version: 3.0.2
> .ruby-gemset: coding_test

### Database creation

Actually using SQLITE for development enviroment.

### Database initialization

```
rake db:setup
```

#### In case of failure

```
rails db:drop
rails db:create
rails db:migrate
rails db:seed
```

### Database seeds

> name: 'John', email: 'john@example.com', role: user, password: '123456789'
> name: 'Peter', email: 'peter@example.com', role: reader, password: '123456789'
> name: 'Mary', email: 'mary@example.com', role: admin, password: '123456789'

### Deployment instructions

rails s
