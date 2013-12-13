class ChangeAllToStrings < ActiveRecord::Migration
  def change
  	drop_table :cards

  	create_table :cards do |t|
      t.string :name
      t.integer :price
      t.integer :power_level
      t.integer :health_level

      t.timestamps
    end
  end
end
