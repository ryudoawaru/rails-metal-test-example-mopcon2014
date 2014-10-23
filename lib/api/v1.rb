require 'sinatra'
module Api
  class V1 < Sinatra::Application
    get '/customers.json' do
      Customer.fetch.to_json
    end
  end
end
