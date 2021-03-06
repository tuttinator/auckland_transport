require 'httparty'
lib = File.expand_path('../../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'auckland_transport/version'
require 'auckland_transport/lazy_load'
require 'auckland_transport/gtfs'
require 'auckland_transport/displays'
require 'auckland_transport/real_time'

# models
require 'auckland_transport/models/route'
require 'auckland_transport/models/agency'

require 'auckland_transport/api_client'
