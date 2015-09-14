class CreateRoomPrices < ActiveRecord::Migration
  def change
    create_table :room_prices do |t|
      t.integer :room_id
      t.float :price
      t.float :charge
      t.float :discount

      t.timestamps null: false
    end
  end
end
