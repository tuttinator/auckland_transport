lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'auckland_transport'

require 'coveralls'
Coveralls.wear!

# The VCR gem uses yaml fixtures instead of live HTTP requests
require 'vcr'
require 'pry'
require 'webmock'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/support/cassettes'
  c.hook_into :webmock
end

RSpec.configure do |config|
  config.treat_symbols_as_metadata_keys_with_true_values = true
  config.run_all_when_everything_filtered = true
  config.filter_run :focus

  # Run specs in random order to surface order dependencies. If you find an
  # order dependency and want to debug it, you can fix the order by providing
  # the seed, which is printed after each run.
  #     --seed 1234
  config.order = 'random'
end
