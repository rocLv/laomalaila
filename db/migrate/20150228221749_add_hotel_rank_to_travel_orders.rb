class AddHotelRankToTravelOrders < ActiveRecord::Migration
  def change
    add_column :travel_orders, :hotel_rank, :integer
  end
end
