# Project Portfolios engine for Refinery CMS.
This cretes a tagged list of portfolio.

## Dependencies
* acts-as-taggable-on

## Installation (as a plugin)
bundle install
script/plugin install git@github.com:ashrafuzzaman/refinerycms-project-portfolios.git
rails generate refinerycms_project_portfolios
rails generate acts_as_taggable_on:migration
rake db:migrate

## How to build this engine as a gem

    cd vendor/engines/project_portfolios
    gem build refinerycms-project_portfolios.gemspec
    gem install refinerycms-project_portfolios.gem
    
    # Sign up for a http://rubygems.org/ account and publish the gem
    gem push refinerycms-project_portfolios.gem