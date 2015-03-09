class AddCitizenIdToTravelOrder < ActiveRecord::Migration
  def change
    add_column :travel_orders, :citizen_id, :integer
  end
end
