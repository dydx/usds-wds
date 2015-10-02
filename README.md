# usds-wds
A Refills-like Rails Gem for the U.S Digital Services Web Design Standards

## About U.S Web Design Standards
The [U.S Web Design Standards](https://playbook.cio.gov/designstandards) were built and are maintained by the designers and developers of the [U.S Digital Service](https://www.whitehouse.gov/digital/united-states-digital-service) and [18F](https://18f.gov)

They are a set of open source UI components and accompanying style guide to create consistency and beautiful user experiences across U.S federal government websites

## (proposed) Installation for Rails projects:
1. Make sure you have [Bourbon](http://bourbon.io), [Neat](http://neat.bourbon.io), and [jQuery](https://jquery.com) installed
2. Add `gem 'usds-wds', :github => 'dydx/usds-wds'` to your `Gemfile`
3. Run `bundle install`

## (proposed) Usage:
* List out available components with `rails generate wds:list`
* Import a specific component with `rails generate wds:import SNIPPET`

Imported snippets' partials are copied to `app/views/wds`, stylesheets are copied to `app/assets/stylesheets/wds`, and JavaScript is copied to `app/assets/javascripts/wds`

## Octobuild 2015
This project is a submission to [Octobuild](http://octobuild.com) 2015.

## License
This project is MIT Licensed
