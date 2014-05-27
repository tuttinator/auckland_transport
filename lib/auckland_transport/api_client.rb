module AucklandTransport
  class APIClient
    attr_reader :api_key

    def initialize(options = {})
      @api_key = options[:api_key]
    end
  end
end
