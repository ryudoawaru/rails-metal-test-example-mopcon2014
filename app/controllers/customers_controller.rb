class CustomersController < ApplicationController

  def index
    respond_to do |f|
      f.json do
        render json: Customer.fetch.to_json
      end
    end
  end

end
