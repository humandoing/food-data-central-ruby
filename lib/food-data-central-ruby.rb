require_relative "food_data_central/version"
require_relative "food_data_central/search"
require_relative "food_data_central/food_details"
require_relative "food_data_central/search_results"

module FoodDataCentral
  def self.configure
    yield self
  end

  def self.api_key
    @api_key
  end

  def self.api_key=(key)
    @api_key = key
  end

  def self.base_uri
    "https://api.nal.usda.gov/fdc/v1"
  end

  def self.sanitize_options(options, permitted_params)
    options.select { |param| permitted_params.include?(param.to_s) }
  end

  def self.default_options
    { api_key: FoodDataCentral.api_key }
  end

end
