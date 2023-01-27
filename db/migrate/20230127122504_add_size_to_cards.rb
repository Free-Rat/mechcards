class AddSizeToCards < ActiveRecord::Migration[7.0]
  def change
    add_column :cards, :size, :integer
  end
end
