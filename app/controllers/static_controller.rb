class StaticController < ApplicationController
  
  def index
  	@subscriber = Subscribe.new
  end

end