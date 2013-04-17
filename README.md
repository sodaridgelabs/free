# Free

TODO: Write a gem description

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
    User.ovlapping(john)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
