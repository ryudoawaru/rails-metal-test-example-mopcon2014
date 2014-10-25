# This file is used by Rack-based servers to start the application.
require ::File.expand_path('../config/environment',  __FILE__)
require ::File.expand_path('../lib/api/v1',  __FILE__)
map '/ext/api/v1' do
  run Api::V1
end
#run Rails.application
