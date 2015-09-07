class CreatePositionalTitles < ActiveRecord::Migration
  def change
    create_table :positional_titles do |t|
      t.string :position

      t.timestamps null: false
    end
  end
end
