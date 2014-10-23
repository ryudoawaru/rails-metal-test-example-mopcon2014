class HelloController < ApplicationController

  def world
    session[:test] = 'hihihi!'
    render text: "Hello World!"
  end
end
