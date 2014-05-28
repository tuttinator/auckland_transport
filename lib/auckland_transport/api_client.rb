module AucklandTransport
  class APIClient
    include HTTParty
    attr_reader :api_key

    def initialize(options = {})
      @api_key = options[:api_key]
      @request_options = { api_key: @api_key }
    end

    # The AT API takes the api key as a query parameter
    def make_request(url)
      self.class.get(url, @request_options }
    end
  end
end
