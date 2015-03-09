class AddPickUpToTravelOrders < ActiveRecord::Migration
  def change
    add_column :travel_orders, :pick_up, :integer
  end
end
