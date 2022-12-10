class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "origin_id"
  belongs_to :departure_airport, class_name: "Airport", foreign_key: "destination_id"

  has_many :bookings
  has_many :passengers, through: :bookings

  def display_depart_time
    "#{dep_time.strftime('%r')} on #{dep_date}"
  end
end
