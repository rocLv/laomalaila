class RemovePriceFromAirs < ActiveRecord::Migration
  def change
    remove_column :airs, :discount, :float
    remove_column :airs, :price,    :float
    remove_column :airs, :charge,   :float
  end
end
