require "json"
require "faraday"

module FoodDataCentral
  module Search
    # Details about what these mean can be found here:
    # https://fdc.nal.usda.gov/api-guide.html#food-search-endpoint
    PERMITTED_PARAMS = %w(generalSearchInput includeDataTypes
    ingredients brandOwner requireAllWords pageNumber
    sortField sortDirection api_key)

    def self.perform(options = {})
      sanitized_options = FoodDataCentral.sanitize_options(options, PERMITTED_PARAMS)
      sanitized_options = sanitized_options.merge(FoodDataCentral.default_options)
      #Rails.logger.info( "Options for Food Data Central API: #{sanitized_options}" )
      response = Faraday.post(base_uri) do |req|
        req.params['api_key'] = FoodDataCentral.api_key
        req.headers['Content-Type'] = 'application/json'
        req.body = sanitized_options.to_json
      end
      json = JSON.parse(response.body)
      FoodDataCentral::SearchResults.new(json)
    end

    def self.base_uri
      FoodDataCentral.base_uri + "/search"
    end

  end
end
