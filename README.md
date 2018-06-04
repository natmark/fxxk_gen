# FxxkGen
`fxxk_gen` is code generator for languages derived from Brainfxxk. It was impressed by [r-fxxk](https://github.com/masarakki/r-fxxk/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'fxxk_gen'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install fxxk_gen

## Usage

```ruby
#!/usr/bin/env ruby
require 'fxxk_gen'

class Ook < Brainfuck
 nxt 'Ook. Ook?'
 prv 'Ook? Ook.'
 inc 'Ook. Ook.'
 dec 'Ook! Ook!'
 put 'Ook! Ook.'
 get 'Ook. Ook!'
 opn 'Ook! Ook?'
 cls 'Ook? Ook!'
end

puts Ook.new.generate("Hello World") 
>> Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook?Ook. Ook?Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook? Ook.Ook! Ook!Ook? Ook!Ook. Ook?Ook. Ook.Ook. Ook.Ook! Ook.Ook? Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook?Ook. Ook?Ook. Ook.Ook. Ook.Ook? Ook.Ook! Ook!Ook? Ook!Ook. Ook?Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook.Ook! Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook.Ook? Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook?Ook. Ook?Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook? Ook.Ook! Ook!Ook? Ook!Ook. Ook?Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook.Ook? Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook?Ook. Ook?Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook? Ook.Ook! Ook!Ook? Ook!Ook. Ook?Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook.Ook? Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook?Ook. Ook?Ook. Ook.Ook. Ook.Ook? Ook.Ook! Ook!Ook? Ook!Ook. Ook?Ook. Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook.Ook. Ook.Ook. Ook.Ook. Ook.Ook! Ook.Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook.Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook!Ook! Ook.
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org/gems/fxxk_gen).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/natmark/fxxk_gen. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the FxxkGen project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/natmark/fxxk_gen/blob/master/CODE_OF_CONDUCT.md).
