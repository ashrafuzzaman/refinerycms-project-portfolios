# Project Portfolios engine for Refinery CMS. #
This cretes a tagged list of portfolio.

# Plugins used #
## Javascript ##
* Jquery - http://jquery.com/
* Quicksand - http://razorjack.net/quicksand/
* bpopup - http://dinbror.dk/bpopup/

## Dependencies ##
* acts-as-taggable-on

## Tag cloud css ##
* ButtonMaker - http://css-tricks.com/examples/ButtonMaker

## Install as gem ##

Add acts-as-taggable-on gem to Gemfile<br>
<blockquote>
gem 'acts-as-taggable-on', '~>2.1.0'<br>
gem 'refinerycms-project_portfolios', '~>0.0.3'<br>
</blockquote>
Then run
<blockquote>
bundle install<br>
rails generate acts_as_taggable_on:migration<br>
rails generate refinerycms_project_portfolios<br>
rake db:migrate<br>
</blockquote>

## Note ##
In the application.html.erb add the following sections<br>
```ruby
<%= yield :javascripts %>
```
<br>And you need to add jquery to the Header<br>
```ruby
<%= javascript_include_tag 'jquery.js' %>
```
<br>A sample stylesheet is given with the plugin in "public/stylesheets/portfolio.css"