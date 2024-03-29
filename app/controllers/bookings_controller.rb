class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flights = find_flights(params[:booking_option])
    passenger_count = params[:passenger_count].to_i
    passenger_count.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(passenger_params)
    @flights = find_flights(params[:booking][:booking_option])
    create_booking_seats(@flights, params[:booking][:passenger_count].to_i)
    @url = bookings_path(@booking.id) 

    respond_to do |format|
      if @booking.save 
        @booking.passengers.each do |passenger|
          PassengerMailer.with(passenger: passenger, booking: @booking, url: bookings_path(@booking.id)).confirmation_email.deliver_now
        end
        format.html { redirect_to booking_url(@booking) }
      else
        format.html { render :new, status: unprocessable_entity }
      end
    end
  end

  def show
    @booking = Booking.find(params[:id])
    
    return if @booking
    flash[:alert] = 'Sorry, it looks like booking does not exist'

    redirect_to root_url
  end

  private

  def passenger_params
    params.require(:booking).permit(passengers_attributes: %i[name email])
  end

  def find_flights(option)
    flight_numbers = option.split
    flight_numbers.collect { |num| Flight.find_by(id: num) }
  end

  def create_booking_seats(flights, passenger_count)
    passenger_count.times do
      flights.each { |flight| @booking.seats.build(flight: flight)    }
    end
  end
end
