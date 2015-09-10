class RemovePriceFromTrainsAndBuses < ActiveRecord::Migration
  def change
    remove_column :trains, :price, :float
    remove_column :trains, :charge, :float
    remove_column :trains, :discount, :float

    remove_column :buses, :price, :float
    remove_column :buses, :charge, :float
    remove_column :buses, :discount, :float
  end
end
