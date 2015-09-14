class AddTripIdToBuses < ActiveRecord::Migration
  def change
    add_column :buses,  :trip_id, :integer
    add_column :trains, :trip_id, :integer
    add_column :airs,   :trip_id, :integer
  end
end
