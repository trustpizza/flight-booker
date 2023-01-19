class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map { |aiport| [airport.location, airport.id] }
    return if search_params.empty?

    @booking_options = find_booking_options
  end

  private 

  def search_params
    params.permit(:origin_id, :destination_id, :departure_date)
  end

  def find_flights
    Flight.where(
      destination_id: Airport.where(code: @departure_airport),
      origin_id: Airport.where(code: @arrival_airport),
      dep_date: @dep_date
    ).order(:dep_date)
  end
end
