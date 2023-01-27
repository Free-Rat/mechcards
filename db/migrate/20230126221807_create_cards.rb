class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.string :name
      t.string :categoty
      t.string :generation
      t.integer :armor
      t.integer :damage
      t.integer :crit
      t.string :discription

      t.timestamps
    end
  end
end
