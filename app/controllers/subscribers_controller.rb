class SubscribersController < ApplicationController
  
  def index
  	@subscriber = Subscriber.new
  	now = Time.now
  	launch_date = Time.new(2013,5,31)
  	#days
  	@days = (launch_date - now).to_i / (60*60*24)
  end

  def create
  	@subscriber = Subscriber.new(params[:subscriber])
  	if @subscriber.save
  		redirect_to root_path
  	else
  		redirect_to root_path
  	end
  end

end