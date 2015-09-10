class AddPriceToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :price, :float
  end
end
