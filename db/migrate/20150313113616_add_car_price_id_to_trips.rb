class AddCarPriceIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :car_price_id, :integer
  end
end
