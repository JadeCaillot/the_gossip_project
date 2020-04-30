# README

This app is made as part of the bootcamp The Hacking Project, the very first complete project. 
The point is to create a realistic database with Ruby on Rails. 
The Gossip Project is an app supposed to gather gossips about people as its name suggests. Fell free to share one ! 


## The Ruby version 
The ruby version used is 2.5.1.
The rails version used is volontarily 5.2.3.

## In Production 
follow the guide : https://first-app-tgp-jade.herokuapp.com/

## Install from your console

`git clone https://github.com/JadeCaillot/the_gossip_project.git`

Install the bundle:
  `bundle install`

Migrate the database:
  `rails db:migrate`
  
Seed the database:
  `rails db:seed`

And launch the server:
  `rails server`

And then access the localhost accordingly, for instance:
  `http://localhost:3000/`


## Additional Gems used
We have used some additional Gems such as:

Faker gem for generating random data
gem 'table_print'
gem 'devise'


## Start playing around with the database in the sandbox:
To use, please follow these commands:
`rails console --sandbox`

### Run tests yourself:

* The database has been seeded to enable testing. To do that, first launch your rails console from your terminal in test environment, so that nothing will be saved:

`rails console --sandbox`
