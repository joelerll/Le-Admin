# README

<!-- set password data 
https://www.techrepublic.com/article/how-to-set-change-and-recover-a-mysql-root-password/ -->

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

- ruby 2.7.0p0


* System dependencies

- Ruby >= 2.7
- Nodejs >= 12
- Mysql >= 8.0.19


* Configuration

sudo apt-get install libmysql-ruby libmysqlclient-dev #for mysql gem

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Production

- rake db:create:all
- RAILS_ENV=production rails s
- RAILS_ENV=production rails db:migrate
