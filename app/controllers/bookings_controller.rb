class BookingsController < ApplicationController
  def new
    @flight = Flight.find(params[:flight_id])
    @booking = @flight.bookings.build
    params[:num_tickets].to_i.times { @booking.passengers.build }
  end

  def create
    @flight = Flight.find(booking_params[:flight_id])
    @booking = @flight.bookings.new(booking_params)

    if @booking.save
      redirect_to booking_path(@booking), notice: 'Booking created'
    else
      render :new, status: unprocessable_entity
    end 
  end

  def show
    @booking = Booking.find(params[:id])
    
    return if @booking
    flash[:alert] = 'Booking does not exist'

    redirect_to root_url
  end

  private

  def booking_params
    params.require(:booking).permit(:flight_id, :num_passengers,  passengers_attributes: [:name, :email] )
  end
end
