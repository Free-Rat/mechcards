class CreateDeckables < ActiveRecord::Migration[7.0]
  def change
    create_table :deckables do |t|
      t.belongs_to :card, null: false, foreign_key: true
      t.belongs_to :deck, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
