class CreateCars < ActiveRecord::Migration
  def change
    create_table :cars do |t|
      t.integer  :identity
      t.string   :host_name
      t.string   :host_id
      t.integer  :rank
      t.float    :unit
      t.float    :starting_price

      t.timestamps null: false
    end
  end
end
