class AddFeeToTravelOrders < ActiveRecord::Migration
  def change
    add_column :travel_orders, :fee, :float
  end
end
