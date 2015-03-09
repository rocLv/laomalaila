class AlterPickUpOfTravelOrders < ActiveRecord::Migration
  def change
    remove_column :travel_orders, :hotel_rank, :integer
    remove_column :travel_orders, :pick_up, :integer

    add_column :travel_orders, :hotel_ranks, :integer
    add_column :travel_orders, :pick_ups, :integer
  end
end
