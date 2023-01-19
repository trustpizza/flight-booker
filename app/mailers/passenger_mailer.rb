class PassengerMailer < ApplicationMailer
  default from: 'notifications@email.com'

  def confirmation_email(passenger)
    #debugger
    @passenger = passenger
    @booking = params[:booking]
    mail(to: @booking.passengers.pluck(:email), subject: 'Booking Confirmation')
  end
end
