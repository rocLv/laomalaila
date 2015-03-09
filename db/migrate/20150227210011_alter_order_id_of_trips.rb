class AlterOrderIdOfTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :order_id, :integer
    add_column :trips, :travel_order_id, :integer
  end
end
