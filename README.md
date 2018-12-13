# README

Welcome to Incident Reporting system! This application enables parents/teachers to report incident / any suspicious activitiy they observe inside school.

The 2 part of the form allows user to fill in each and every detail about the incident, so that school can prevent such incidents going further.

This application is built in Ruby on Rails and using Postgres as Database.

# Technical Specifications

* Ruby version: 2.5.3
* Rails version: 5.2.2
* System dependencies:
	* Postgres
	* AWS S3
* Configuration: Rename `config/database.yml.example` to `config/database.yml`
* Database creation: `rake db:create`
* Database initialization:
	* `rake db:migrate`
	* `rake db:seed`
* ENV Variables: You'll need 4 environment variables to run this:
	* AWS_ACCESS_KEY_ID
	* AWS_SECRET_ACCESS_KEY
	* S3_BUCKET
	* AWS_REGION
