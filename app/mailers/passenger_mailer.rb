class PassengerMailer < ApplicationMailer
  default from: 'notifications@email.com'

  def confirmation_email
    @booking = params[:booking]
    @booking.passengers.each do |passenger|
      @passenger = passenger
      mail(to: passenger.email, subject: 'Booking Confirmation')
    end
  end
end
