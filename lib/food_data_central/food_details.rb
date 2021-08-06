module FoodDataCentral
  module FoodDetails
    def self.retrieve(fdcId)

      response = Faraday.get(FoodDataCentral.base_uri + "/#{fdcId}") do |req|
        req.params['api_key'] = FoodDataCentral.api_key
        req.headers['Content-Type'] = 'application/json'
      end
      JSON.parse(response.body)
    end

  end
end
