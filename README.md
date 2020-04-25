# Batman App

The objective of this application was to create a rails application to showcase various forms of automated testing including front-end web automation, back-end API automation and unit tests in honor of the acclaimed series _Batman: The Animated Series_. Users can browse characters, episodes, movies and actors within the series as well as create a custom character.

# Setup

1. `git clone https://github.com/jlinville01/batman-app.git`
2. `cd batman-app`
3. `bundle install`
4. `rake db:create`
5. `rake db:migrate`
6. `rake db:seed`
7. `rails s`
8. Install Google Chrome (for web testing)

# Run Tests

### Front-End (Web) Automation:
- Run Sequentially
  - `cucumber -p localhost -t @web`
- Run In Parallel:
  - `bundle exec parallel_cucumber features/ -n 3 -o '-p localhost -t "@web" -c -f pretty'`
  
### Back-End (API) Automation:
- Run Sequentially
  - `cucumber -p localhost -t @api`
- Run In Parallel:
  - `bundle exec parallel_cucumber features/ -n 3 -o '-p localhost -t "@api" -c -f pretty'`

### Controller Unit Tests:
- `rake spec OR rspec`

### Model Unit Tests:
- `rake test:models`

(run `rake db:drop db:create db:migrate db:seed` to reset database)

![Alt Text](https://media.giphy.com/media/5DQdk5oZzNgGc/giphy.gif)
