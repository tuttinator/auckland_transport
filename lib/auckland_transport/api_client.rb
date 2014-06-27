module AucklandTransport
  # API Client class
  class APIClient
    include HTTParty
    attr_reader :api_key

    def initialize(options = {})
      @api_key = options[:api_key]
      fail ArgumentError, ':api_key is required' unless @api_key
      @request_options = { api_key: @api_key }
    end

    # The AT API takes the api key as a query parameter
    def get(url)
      self.class.get(url, @request_options)
    end
  end
end
