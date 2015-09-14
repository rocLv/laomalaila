class RemoveTripIdFromTransports < ActiveRecord::Migration
  def change
    remove_column :buses,     :trip_id, :integer
    remove_column :trains,    :trip_id, :integer
    remove_column :airs,      :trip_id, :integer

    add_column :bus_prices,   :trip_id, :integer
    add_column :train_prices, :trip_id, :integer
    add_column :airs,         :trip_ied, :integer
  end
end
