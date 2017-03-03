# LondonCab

[![Gem Version](https://badge.fury.io/rb/london_cab-auth.svg)](http://badge.fury.io/rb/london_cab-auth)
[![Build Status](https://travis-ci.org/RaMin0/london_cab-auth.svg?branch=master)](https://travis-ci.org/RaMin0/london_cab-auth)
[![Code Climate](https://codeclimate.com/github/RaMin0/london_cab-auth/badges/gpa.svg)](https://codeclimate.com/github/RaMin0/london_cab-auth)

An authentication extension for [london_cab](https://github.com/RaMin0/london_cab).

[![](london_cab.png)](http://65.182.108.16)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'london_cab-auth'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install london_cab-auth
```

## Usage

### API Token
To acquire an API token, use the same credentials for your corporate London Cab account.

### Configuration

```ruby
LondonCab::Auth.configure do |config|
  config.username = ENV['LONDON_CAB_API_AUTH_USERNAME']
  config.password = ENV['LONDON_CAB_API_AUTH_PASSWORD']
end
```

This sets a global default username and password. You can also pass a username and password to the initializer of `LondonCab::Auth::Client`.

```ruby
client = LondonCab::Auth::Client.new(username: ENV['LONDON_CAB_API_AUTH_USERNAME'],
                                     password: ENV['LONDON_CAB_API_AUTH_PASSWORD'])
```

The instance username and password will be used over the global default.

The following globals settings are supported via `LondonCab::Auth.configure`.

setting      | description
-------------|------------
username     | London Cab API Auth username.
password     | London Cab API Auth password.
logger       | An optional logger.<br/>**Default:** `Logger.new(STDOUT)` at `Logger::WARN` level.

### Client

The London Cab Auth allows you to generate tokens that can be used with the London Cab API client.

#### Configuration
setting      | description
-------------|------------
endpoint     | London Cab Auth endpoint.<br/>**Default:** http://65.182.108.16:22710
user_agent   | User-agent.<br/>**Default:** LondonCab::Auth/VERSION.
username     | **Required.** London Cab API Auth username.
password     | **Required.** London Cab API Auth password.
logger       | **Optional.** `Logger` instance that logs HTTP requests.

## Documentation

### Auth
You can use the client to make requests related to auth.

#### Generate Auth

Request rides with `#auth`.

```ruby
client.auth
```

## History

The structure of this gem is based on [slack-ruby-client](https://github.com/slack-ruby/slack-ruby-client).

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at [https://github.com/RaMin0/london_cab-auth]().

