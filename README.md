# Codapedia

Welcome to Codapedia. A Ruby on Rails web application inspired by Wikipedia that lets users create, read and edit their own articles or "Wikis". Users can also edit other users' articles and "Wikis" unless that user has made their "Wiki" private. Users can collaborate on information in order to further the knowledge of everyone.

### Project Objectives

* Users can sign up for free accounts by providing a username, password and email
* Users can sign in and out of Codapedia
* Users can create, read, update and delete public wikis
* Users can be assigned one of three roles: admin, standard, or premium
* As a developer we seed the development database with fake users and wikis
* Users can upgrade their standard account to a paid premium plan
* Premium users can create private wikis
* Wikis can accept Markdown syntax
* Premium users can add and remove collaborators onto their private wikis

### Built Using

##### Languages and Frameworks:

* Ruby 2.3.3
* Rails 4.2.5

##### Databases:

* SQLite (Development)
* PostgreSQL (Production)

##### Tools and Gems

* SendGrid for email confirmation
* Devise for user authentication
* Pundit for user authorization
* Stripe for secure payments
* Figaro for secure configuration
* Faker for seeding fake db data
* Bootstrap for responsive layout configuration
* Redcarpet for Markdown
