class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.integer :hotel_id
      t.integer :kind
      t.float :price
      t.integer :people
      t.boolean :pc

      t.timestamps null: false
    end
  end
end
