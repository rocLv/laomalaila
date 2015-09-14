class CreateBusPrices < ActiveRecord::Migration
  def change
    create_table :bus_prices do |t|
      t.integer :bus_id
      t.float :price
      t.float :charge
      t.float :discount

      t.timestamps null: false
    end
  end
end
