# GroupPermission

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'group_permission', git: 'https://github.com/sanket-redkar/group_permisson.git'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install group_permission

## Usage

###Add role_name:string field to your Group Model

```ruby
def self.up
  create_table :group do |t|
    t.string :name

    # Group permission column
    t.string :role_name

    t.timestamps
  end
end
```
####Generate permissions files in application with following generator

```ruby
bundle exec rails g the_group install
```

###Add one line in your Grop Model

```ruby
class Group < ActiveRecord::Base
    include Group::Permission
    
end
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
