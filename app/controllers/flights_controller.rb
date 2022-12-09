class FlightsController < ApplicationController
  def index
    @flight_names = Flight.all.map { |f| Airport.find(f.destination_id).code }
    @flights = Flight.all
  end
end
