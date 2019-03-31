
Project information:

Ruby version 2.5.1
Rails version 5.2.3
DBMS postgres

Project setup

1. git pull git@github.com:bozo94/overwatch_api.git
2. if using rvm run: rvm install 2.5.1 , in case of rbenv: rbenv install 2.5.0; rbenv rehash
3. bundle
4. rake db:create db:migrate db:seed
5. rake database:import_heros_and_abilities_from_api
6. rails s

Runing rspec tests
1. RAILS_ENV=test bundle exec rake db:migrate
2. rspec