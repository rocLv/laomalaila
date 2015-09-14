class AddBusPriceIdToTrps < ActiveRecord::Migration
  def change
    add_column :trips, :bus_price_id, :integer
    add_column :trips, :train_price_id, :integer
    add_column :trips, :air_price_id,   :integer
  end
end
