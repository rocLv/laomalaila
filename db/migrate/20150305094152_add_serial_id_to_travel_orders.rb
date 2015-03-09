class AddSerialIdToTravelOrders < ActiveRecord::Migration
  def change
    add_column :travel_orders, :serial_id, :integer
  end

end
