# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_27_122504) do
  create_table "cards", force: :cascade do |t|
    t.string "name"
    t.string "categoty"
    t.string "generation"
    t.integer "armor"
    t.integer "damage"
    t.integer "crit"
    t.string "discription"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "size"
  end

  create_table "deckables", force: :cascade do |t|
    t.integer "card_id", null: false
    t.integer "deck_id", null: false
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_deckables_on_card_id"
    t.index ["deck_id"], name: "index_deckables_on_deck_id"
  end

  create_table "decks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "deckables", "cards"
  add_foreign_key "deckables", "decks"
end
