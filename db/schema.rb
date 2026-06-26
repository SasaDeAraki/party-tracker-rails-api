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

ActiveRecord::Schema[8.1].define(version: 2026_06_26_143528) do
  create_table "characters", force: :cascade do |t|
    t.string "character_class"
    t.datetime "created_at", null: false
    t.integer "hp"
    t.string "name"
    t.integer "player_id", null: false
    t.integer "table_id", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_characters_on_player_id"
    t.index ["table_id"], name: "index_characters_on_table_id"
  end

  create_table "players", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.datetime "updated_at", null: false
  end

  create_table "players_tables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "player_id", null: false
    t.integer "table_id", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id", "table_id"], name: "index_players_tables_on_player_id_and_table_id", unique: true
    t.index ["player_id"], name: "index_players_tables_on_player_id"
    t.index ["table_id"], name: "index_players_tables_on_table_id"
  end

  create_table "tables", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "name"
    t.string "system"
    t.datetime "updated_at", null: false
  end

  add_foreign_key "characters", "players"
  add_foreign_key "characters", "tables"
  add_foreign_key "players_tables", "players"
  add_foreign_key "players_tables", "tables"
end
