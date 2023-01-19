class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |airport| [airport.location, airport.id] }
    return if search_params.empty?

    @booking_options = find_flights
    debugger
  end

  private 

  def search_params
    params.permit(:origin_id, :destination_id, :departure_date)
  end

  def find_flights
    if params[:origin_id] == params[:destination_id]
      flash.now[:alert] = "Please choose two different origin and destination locations!"
      render :index
    else
      BookingOptions.new(search_params).find_flights
    end
  end
end
