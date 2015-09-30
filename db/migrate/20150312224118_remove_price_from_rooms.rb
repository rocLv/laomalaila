class RemovePriceFromRooms < ActiveRecord::Migration
  def change
    remove_column :rooms, :price, :float
  end
end
