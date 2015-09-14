class RemovePriceFromHotels < ActiveRecord::Migration
  def change
    remove_column :hotels, :price, :float
    remove_column :hotels, :charge, :float
    remove_column :hotels, :discount, :float

    add_column    :rooms, :price, :float
    add_column    :rooms, :charge, :float
    add_column    :rooms, :discount, :float
  end
end
