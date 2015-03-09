class CreateTravelOrders < ActiveRecord::Migration
  def change
    create_table :travel_orders do |t|
      t.integer :user_id

      t.string :phone
      t.string :fax
      t.string :tax_delivery_address
      t.string :emergency_contact_name
      t.string :emergency_contact_phone
      t.string :emergency_contact_address
      t.string :from
      t.string :to
      
      t.integer :types
      t.integer :status
      t.integer :transports
      
      t.float :budget
      t.string :email
      
      t.datetime :estimate_departure_time
      t.datetime :estimate_arrive_time
      t.datetime :departure_time
      t.datetime :arrive_time
      
      t.timestamps null: false
    end
  end
end
