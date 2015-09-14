class AddHotelIdToTrips < ActiveRecord::Migration
  def change
    add_column :trips, :room_id, :integer
  end
end
