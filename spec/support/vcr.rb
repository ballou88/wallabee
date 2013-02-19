require 'vcr'
require 'pp'

VCR.configure do |c|
  c.cassette_library_dir = 'spec/cassettes'
  c.hook_into :faraday
  c.configure_rspec_metadata!

  if ENV['RECORDING']
    c.filter_sensitive_data('api_key') { ENV['API_KEY'] }
  end

end
