class PassengerMailer < ApplicationMailer
  default from: 'notifications2email.com'

  def confirmation_email
    @passenger = params[:passenger]
    @url = 'https://mysterious-bastion-32456.herokuapp.com/'
    mail(to: @passenger.email, subject: 'Booking Confirmation')
  end
end
