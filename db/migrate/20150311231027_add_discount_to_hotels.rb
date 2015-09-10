class AddDiscountToHotels < ActiveRecord::Migration
  def change
    add_column :hotels, :discount, :float
    add_column :hotels, :price,    :float
    add_column :hotels, :charge,   :float
  end
end
