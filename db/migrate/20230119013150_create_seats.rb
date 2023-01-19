class CreateSeats < ActiveRecord::Migration[7.0]
  def change
    create_table :seats do |t|
      t.bigint :booking_id
      t.bigint :flight_id

      t.timestamps
    end
  end
end
