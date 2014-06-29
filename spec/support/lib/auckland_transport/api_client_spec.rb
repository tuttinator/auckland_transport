require 'spec_helper'

describe AucklandTransport::APIClient do
  let(:client) { AucklandTransport::APIClient.new(api_key: 'abc') }

  it 'is initialized' do
    expect(client).to_not be_nil
  end

  it 'requires an api key' do
    expect { AucklandTransport::APIClient.new }.to raise_error
    expect { AucklandTransport::APIClient.new(api_client: nil) }.to raise_error
  end
end
