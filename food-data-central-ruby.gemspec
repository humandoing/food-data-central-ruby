# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "food_data_central/version"

Gem::Specification.new do |spec|
  spec.name = "food-data-central-ruby"
  spec.version = FoodDataCentral::VERSION
  spec.authors = ["Daniel Wintschel"]
  spec.email = ["daniel@humandoing.net"]

  spec.summary = "Ruby wrapper for Food Data Central Nutrient Database RESTful API"
  spec.license = "MIT"

  spec.files = `git ls-files`.split("\n")

  #spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0"
  #spec.add_development_dependency "vcr", "~> 2.0"
  #spec.add_development_dependency "webmock", "~> 1.0"
  #spec.add_development_dependency "codeclimate-test-reporter", "~> 0"

  spec.add_dependency "faraday"
  spec.add_dependency "json"
  spec.add_dependency "rspec", "3.8"
  spec.add_dependency "factory_girl", "~> 4.0"
end
