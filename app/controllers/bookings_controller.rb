class BookingsController < ApplicationController
  def new
    @flight = Flight.includes(:origin_id, :destination_id).find(params[:flight_id])
    @booking = @flight.bookings.build
    params[:num_passengers].to_i.times { @booking.passengers.build }
  end

  def create
  end

  def booking_params
  end
end
