require 'spec_helper'

describe AucklandTransport::GTFS do
  describe 'routes' do
    let(:api_key) { 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee' }

    it 'loads routes' do
      VCR.use_cassette('routes') do
        client = AucklandTransport::APIClient.new(api_key: api_key)
        expect(client.routes).to_not be_nil
      end
    end

    # it expects routes to return an array of route objects
  end
end
