require 'spec_helper'

describe AucklandTransport::APIClient do
  let(:client) { AucklandTransport::APIClient.new(api_key: 'abc') }

  it 'is initialized' do
    expect(client).to_not be_nil
  end
end
