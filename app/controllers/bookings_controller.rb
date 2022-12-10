class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build
    params[:num_tickets].to_i.times { @booking.passengers.build }
  end

  def booking_params
    params.require(:booking).permit(:flight_id, :num_passengers, passenger_attributes: %i[name email])
  end
end
