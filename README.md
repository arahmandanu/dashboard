# README

Please take note on ruby version and rails version before start it

* Ruby version
  - ruby 2.7.2

* System dependencies
  - rails 7.0.4 
  - postgres 12.12

* Database creation 
  - duplicate .env.development.local_template 
  - rename to .env.development.local
  - fill the database setting

* Database initialization (terminal as root folder)
  - run: rake db:create
  - run: rake db:migrate
  - run: rake seed:migrate

* Run system local 
  - go to terminal as root folder and type
      - rails s
