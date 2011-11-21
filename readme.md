# Project Portfolios engine for Refinery CMS.
This cretes a tagged list of portfolio.

# Plugins used
## Javascript
* Jquery - http://jquery.com/
* Quicksand - http://razorjack.net/quicksand/
* bpopup - http://dinbror.dk/bpopup/

## Dependencies
* acts-as-taggable-on

## Tag cloud css
* ButtonMaker - http://css-tricks.com/examples/ButtonMaker

## Installation (as a plugin)
Add acts-as-taggable-on gem to Gemfile

gem 'acts-as-taggable-on', '~>2.1.0'

bundle install

rails plugin install https://github.com/ashrafuzzaman/refinerycms-project-portfolios.git

rails generate refinerycms_project_portfolios

rails generate acts_as_taggable_on:migration

rake db:migrate

## Install as gem

Add acts-as-taggable-on gem to Gemfile

gem 'acts-as-taggable-on', '~>2.1.0'

gem 'refinerycms-project-portfolios', '>=1.0'

bundle install

rails generate acts_as_taggable_on:migration

rails generate refinerycms_project_portfolios

rake db:migrate