class Flight < ApplicationRecord
  belongs_to :origin_airport, class_name: "Airport", 
                               foreign_key: "origin_id",
                               inverse_of: :departing_flights
  belongs_to :destination_airport, class_name: "Airport", 
                                 foreign_key: "destination_id",
                                 inverse_of: :arriving_flights

  has_many :seats, dependent: :destroy
  has_many :bookings, through: :seats
  has_many :passengers, through: :bookings

  def flight_details
    departure_time = 
    arrival_time = 
    "#{departure_time} depart from #{origin_airport.code} and arrive at #{arrival_time} at #{destination_airport.code}"
  end

  def readable_departure
    departure_time.strftime('%l:%M %p')
  end

  def readable_arrival
    (departure_time + (duration.to_f / 60).hours).strftime('%l:%M %p')
  end

  def readable_date
    departure_date.strftime("%B %d, %Y")
  end
end
