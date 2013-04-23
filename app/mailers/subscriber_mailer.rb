class SubscriberMailer < ActionMailer::Base
  default from: "welcome@homecanvasr.com"

  def welcome_email(subscriber)
  	@subscriber = subscriber
  	mail to: subscriber.email, subject: "Welcome to HomeCanvasr"
  end

end
