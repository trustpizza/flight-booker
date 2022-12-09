class FlightsController < ApplicationController
  def index
    @flight_options = Flight.all.map { |f| [Airport.find(f.destination_id), Airport.find(f.origin_id)] }
    @flights = Flight.all
  end
end
