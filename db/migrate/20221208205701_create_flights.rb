class CreateFlights < ActiveRecord::Migration[7.0]
  def change
    create_table :flights do |t|
      t.time :dep_time
      t.date :dep_date
      t.integer :origin_id
      t.integer :destination_id
      t.integer :duration

      t.timestamps
    end
  end
end
