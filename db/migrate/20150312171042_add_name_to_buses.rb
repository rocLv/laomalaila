class AddNameToBuses < ActiveRecord::Migration
  def change
    add_column :buses,  :name, :string
    add_column :trains, :name, :string
    add_column :airs,   :name, :string
  end
end
