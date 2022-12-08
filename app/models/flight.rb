class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport", foreign_key: "origin_id"
  belongs_to :departure_airport, class_name: "Airport", foreign_key: "destination_id"
end
