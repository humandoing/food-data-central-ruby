module FoodDataCentral
  class SearchResults
    def initialize(response)
      @response = response
    end

    def error
      @response["error"]
    end

    def status
      @response["status"]
    end

    def size
      @response["totalHits"]
    end

    def page_count
      @response["totalPages"]
    end

    def current_page
      @response["currentPage"]
    end

    def results
      @response["foods"]
    end

    def to_s
      @response
    end
  end
end
