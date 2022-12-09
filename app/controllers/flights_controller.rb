class FlightsController < ApplicationController
  def index
    @departure_airport = params[:departure_airport]
    @arrival_airport = params[:arrival_airport]
    @dep_date = params[:dep_date]
    @num_passengers = params[:num_passengers]

    @flights = Flight.where(
      destination_id: Airport.where(code: @departure_airport),
      origin_id: Airport.where(code: @arrival_airport)
    ).order(:dep_date)
  end

end
