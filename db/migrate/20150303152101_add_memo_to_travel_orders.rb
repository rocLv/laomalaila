class AddMemoToTravelOrders < ActiveRecord::Migration
  def change
    add_column :travel_orders, :memo, :text
  end
end
