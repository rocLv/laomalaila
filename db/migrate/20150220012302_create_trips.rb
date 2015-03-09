class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.integer :order_id
      t.string :from_location
      t.string :to_location
      t.datetime :departure_time
      t.datetime :arrive_time
      t.integer :way

      t.timestamps null: false
    end
  end
end
