class Booking < ApplicationRecord
  validates :flight_id, presence: true

  has_many :seats, dependent: :destroy
  has_many :flights, through: :seats
  has_many :passengers, dependent: :destroy

  accepts_nested_attributes_for :passengers
end
