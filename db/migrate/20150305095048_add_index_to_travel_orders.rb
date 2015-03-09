class AddIndexToTravelOrders < ActiveRecord::Migration
  add_index :travel_orders, :serial_id, unique: true
end
