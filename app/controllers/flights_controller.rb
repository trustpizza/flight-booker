class FlightsController < ApplicationController
  def index
    @flight_names = Flight.all.map { |f| [Airport.find(f.destination_id).code, f.id] }
    @airports = Airport.all
    @flights = Flight.all
  end
end
