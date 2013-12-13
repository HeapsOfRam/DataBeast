class ChangeAllToStrings < ActiveRecord::Migration
  def change
  	drop_table :cards

  	create_table :cards do |t|
      t.string :name
      t.string :price
      t.string :power_level
      t.string :health_level

      t.timestamps
    end
  end
end
