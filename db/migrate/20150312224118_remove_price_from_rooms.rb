class RemovePriceFromRooms < ActiveRecord::Migration
  def change
    remove_column :rooms, :price, :float
    remove_column :rooms, :discount, :float
    remove_column :rooms, :charge,   :float
  end
end
