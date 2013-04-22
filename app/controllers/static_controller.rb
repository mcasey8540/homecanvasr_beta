class StaticController < ApplicationController
  
  def index
  	@subscriber = Subscribe.new
  	now = Time.now
  	launch_date = Time.new(2013,5,31)

  	#days
  	@days = (launch_date - now).to_i / (60*60*24)

  end

end