class BookingOptions
  def initialize(params)
    @origin = Airport.find_by(id: params[:origin_id])
    @destination = Airport.find_by(id: params[:destination_id])
    @date = params["departure_date"]
  end

  def find_flights 
    direct_flights = find_flight(@origin, @destination, @date).collect {|flight| flight}
  end

  private

  def find_flight (origin, destination, date)
    Flight.where({
      origin_id: origin,
      destination_id: destination,
      departure_date: date
    })
  end
end