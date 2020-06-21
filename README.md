# This Project uses folowing versions

* ruby 2.7.1
* rails 6.0.3.2

# Set Up Instructions to be executed in same order

* Clone the repo and cd into project folder
* run bundle install
* rails db:create
* rails db:migrate
* Test - rails test
### routes are scoped with locale, locale supported are :en and :ru
* visit http://localhost:3000/{locale}/contacts 