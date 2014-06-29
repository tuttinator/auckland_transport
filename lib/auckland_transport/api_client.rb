module AucklandTransport
  # API Client class
  class APIClient
    include HTTParty
    include AucklandTransport::LazyLoad::Macros
    include AucklandTransport::GTFS
    include AucklandTransport::Displays
    include AucklandTransport::RealTime

    attr_reader :api_key
    base_uri 'https://api.at.govt.nz/v1'

    def initialize(options = {})
      @api_key = options[:api_key]
      fail ArgumentError, ':api_key is required' unless @api_key
      @request_options = { query: { api_key: @api_key } }
    end

    # The AT API takes the api key as a query parameter
    def get(url)
      self.class.get(url, @request_options)
    end
  end
end
