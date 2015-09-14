class CreateHotels < ActiveRecord::Migration
  def change
    create_table :hotels do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.integer :rank
      t.string :province
      t.string :city
      t.string :distinct
      t.string :road

      t.timestamps null: false
    end
  end
end
