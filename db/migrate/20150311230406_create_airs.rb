class CreateAirs < ActiveRecord::Migration
  def change
    create_table :airs do |t|
      t.string :model
      t.float :discount
      t.integer :rank
      t.float :price
      t.float :charge
      t.string :from
      t.string :to
      t.string :departure_time
      t.string :arrive_time
      t.string :from_station
      t.string :to_station
      t.string :from_station_address
      t.string :to_station_address
      t.float :miles
      t.string :company

      t.timestamps null: false
    end
  end
end
