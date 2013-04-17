# Free

Free is a gem that allows for painless integration of timeslots into your Rails app. Say for intance, you have Users who are busy during different hours of the day. You'd like them to input their schedules by selecting timeslot boxes in a grid. Then you'd like to do computation with that data, like find who's available during a certain timeslot, or find which timeslots are completely open. 

Free is designed for these types of applications. It stores timeslot data as bit fields, and uses bitmasking techniques in its computations, so it's extremely fast and efficient, and doesn't require any new database tables.

NOTE: This gem is in early development right now, and does not yet work. Stay tuned for a working version, and please pitch in and help if you'd like to.

## Installation

Add this line to your application's Gemfile:

    gem 'free'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install free

## Usage

Run the generator to add free to the models you'd like. In this example, we are adding free to a User model:

    rails generate free:add user

Next, migrate to add the timeslots column to your User model:

    rake db:migrate

You'll notice that your User model is now implementing free with its timeslots attribute:

    free :timeslots

In order to find other users who have overlapping timeslots with john, use the overlapping method:

    john = User.find(1)
    User.overlapping(john)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
