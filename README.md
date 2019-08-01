# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:
Implement authorization with Pundit.

Ruby version

* ruby '2.6.3'
* rails '5.2.3'

Configuration add devise and pundit gems to Gemfile

* bundle install
* $ rails generate devise:install
* $ rails generate devise User role
* Then run $ rails db:migrate
* $ rails g pundit:install

Use the supplied generator to generate policies:

* $ rails g pundit:policy MODEL_NAME

In the application_controller.rb file add

* include Pundit
* protect_from_forgery

Database connection
* PostgreSQL
