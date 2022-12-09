class Passenger < ApplicationRecord
  belongs_to :bookings
  has_one :flight, through: :booking
end
