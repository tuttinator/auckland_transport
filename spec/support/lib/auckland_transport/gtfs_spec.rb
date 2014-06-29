require 'spec_helper'

describe AucklandTransport::GTFS do
  describe 'routes' do
    it 'loads routes' do
      VCR.use_cassette('routes') do
        client = AucklandTransport::APIClient.new(api_key: 'aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee')
        expect(client.routes).to_not be_nil
      end
    end
  end
end
