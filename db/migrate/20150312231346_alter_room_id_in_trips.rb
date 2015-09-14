class AlterRoomIdInTrips < ActiveRecord::Migration
  def change
    remove_column :trips, :room_id, :integer
    add_column    :trips, :room_price_id, :integer
  end
end
