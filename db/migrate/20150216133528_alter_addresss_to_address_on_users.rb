class AlterAddresssToAddressOnUsers < ActiveRecord::Migration
  def change
    remove_column :users, :addresss, :string
    add_column :users, :address, :string
  end
end
