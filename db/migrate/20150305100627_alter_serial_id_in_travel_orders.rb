class AlterSerialIdInTravelOrders < ActiveRecord::Migration
  def change
    remove_column :travel_orders, :serial_id, :integer
    add_column :travel_orders, :serial_id, :string
  end
end
