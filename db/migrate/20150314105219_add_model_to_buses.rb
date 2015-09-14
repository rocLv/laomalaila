class AddModelToBuses < ActiveRecord::Migration
  def change
    %w[buses trains].each do |transport|
      add_column transport, :model, :string
    end
  end
end
