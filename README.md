# Autoirb

Run binding.irb automatically when an error occurs.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'autoirb'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install autoirb

## Usage

    $ ruby -rautoirb your_script.rb

If an error occurs, execute binding.irb with the binding that occurred.

If you want to use pry instead of irb, replace `-rautoirb` with `-rautoirb/pry`.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/nodai2hITC/autoirb. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Autoirb project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/autoirb/blob/master/CODE_OF_CONDUCT.md).
