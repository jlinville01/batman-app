# Batman App

The objective of this application was to create a rails application to showcase various forms of testing including Front-End web automation, Back-End API automation and Unit/Fixture tests in honor of the acclaimed series 'Batman: The Animated Series.'

## TO-DO:

Front-End
- add IDs
- css: create character
- add episode images (need to add to schema)
- add character images (need to add to schema)

Back-End
- web automation
- unit tests

# Setup

1. `git clone https://github.com/jlinville01/batman-app.git`
2. `cd /batman-app`
3. `bundle install`
4. `rails s`
5. `rake db:create`
6. `rake db:migrate`
7. `rake db:seed`

# Run Tests

Front-End (Web) Automation:
`cucumber -p localhost -t @web`

Back-End (API) Automation:
`cucumber -p localhost -t @api`

Unit Tests:
`rake spec OR rspec`

Fixures:
`rake test:models`

(run `rake db:drop db:create db:migrate db:seed` to reset database)

![Alt Text](https://media.giphy.com/media/5DQdk5oZzNgGc/giphy.gif)
