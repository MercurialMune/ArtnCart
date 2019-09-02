# Art n Cart

A web application that combines an e-commerce suite with a membership/subscription suite. The e-commerce suite sells art pieces while the membership service mails the users every time an article is created on how to make great art. Moreover, users must subscribe to the service to view the tutorials. Built on Ruby on Rails

## Technologies Used
- Ruby v. 2.5.5
- Rails v. 6.0.0
- HTML 5
- SCSS
- W3CSS
- Postgresql Database
- Check the ```Gemfile``` for a list of the ruby gems used

## System dependencies

- Rails version => 5.2
- Ruby version => 1.8.*
- Composer
- git
- install gem or RVM (ruby version manager)
- install devise for authentication, ```gem install devise```

## Configuration
To run the following project on your local machine:
- ```git clone```
- ```cd artncart```
- ```bundle install```
- ```rails s``` to serve the application

## Database Configuration
A native rails app comes with SQLite3 as the default DB. However, I used PostgreSQL for the project.
Since there are migrations on the repo:
- create a database ```create database artncart```
- use ```rake db:migrate``` to push the schema to the DB
* NOTE: You have to create a db and migrate the schema before serving the app otherwise the landing page will throw an error.
