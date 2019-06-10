# NotyFlash

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/noty_flash`. To experiment with that code, run `bin/console` for an interactive prompt.


# Дока

https://ned.im/noty/#/

## Installation

Add this line to your application's Gemfile:

```ruby
source 'https://rails-assets.org' do
  gem 'rails-assets-noty'
end

gem 'noty_flash'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install noty_flash


Add noty_flash javascript into application.js:

```
//= require noty
//= require noty_flash
//= require noty_ajax_handlers
```

Add noty CSS styles into applicaton.css:

```
*= require noty
```

Add `helper NotyFlash::ApplicationHelper` to your `ApplicationController`

## Usage in Rails views

In Ruby views to show every flashes with noty

> noty_flashes()

## Usage in Javascript

> window.NofyFlash.show('error', 'message')

where 'error' is type of `noty` message

or

> window.NofyFlash.error('message')

## Other solutions

* https://github.com/fakhir-shad/flash_notifier

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/dapi/noty_flash. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the NotyFlash project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/dapi/noty_flash/blob/master/CODE_OF_CONDUCT.md).
