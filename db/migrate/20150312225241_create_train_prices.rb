class CreateTrainPrices < ActiveRecord::Migration
  def change
    create_table :train_prices do |t|
      t.integer :train_id
      t.float :price
      t.float :charge
      t.float :discount

      t.timestamps null: false
    end
  end
end
