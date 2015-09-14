class CreateAirPrices < ActiveRecord::Migration
  def change
    create_table :air_prices do |t|
      t.float :price
      t.float :charge
      t.float :discount
      t.integer :air_id

      t.timestamps null: false
    end
  end
end
