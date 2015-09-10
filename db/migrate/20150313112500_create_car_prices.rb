class CreateCarPrices < ActiveRecord::Migration
  def change
    create_table :car_prices do |t|
      t.integer  :rank
      t.float    :price
      t.float    :charge
      t.float    :discount
      t.integer  :trip_id
      t.datetime :notice_time
      t.float    :miles
      t.integer :car_id

      t.timestamps null: false
    end
  end
end
