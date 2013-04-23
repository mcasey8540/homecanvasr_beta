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
  		#send mailer
  		SubscriberMailer.welcome_email(@subscriber).deliver
  		redirect_to root_path, notice: "Subscribed successfully."
  	else
  		redirect_to root_path
  	end
  end

  def survey

  end

end