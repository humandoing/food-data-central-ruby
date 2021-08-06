# food-data-central-ruby

Hack job Ruby wrapper for Food Data Central API with no testing whatsoever so please use at your own risk.

REST API

This gem assumes that you want data returned in JSON format. There may be
support for XML in the future.

## Getting started

Add the gem to your Gemfile:

```ruby
gem 'food-data-central-ruby', '~> 0.1', git: 'https://github.com/humandoing/food-data-central-ruby', branch: 'main'
```

## Setting the API Key

All calls to the API require a registered data.gov api_key. If you're using
Rails, you can set up your API in an initializer like this:

```ruby
# config/initializer/ndb-api.rb
FoodDataCentral.configure do |config|
  config.api_key = ENV["OPEN_GOV_API_KEY"]
end
```

## Search

The Search request is wrapped in a simple ```.perform``` method on
```FoodDataCentral::Search``` and can be used like so:

```ruby
FoodDataCentral::Search.perform(generalSearchInput: "butter")
```

Full list of options can be found in the [Search
Documentation](https://fdc.nal.usda.gov/api-guide.html)

## Food Details

The Food Details request is wrapped in a simple ```.retrieve``` method on
```FoodDataCentral::FoodDetails``` and can be used like so:

```ruby
FoodDataCentral::FoodDetails.retrieve(fdcId)
```

## Acknowledgements

Largely based on (wholly copied/modified from) https://github.com/alexstophel/ndb-ruby
