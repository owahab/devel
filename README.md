# Devel

Devel is a set of tools for Rails Developers.

## Installation

Add this line to your application's Gemfile:

    gem 'devel'

And then execute:

    $ bundle

## Usage

To enable Letter Opener, just add the following to your `development.rb`:

    config.action_mailer.delivery_method = :letter_opener

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
