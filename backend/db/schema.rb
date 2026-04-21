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

ActiveRecord::Schema[8.1].define(version: 2026_04_21_015452) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "character_infos", force: :cascade do |t|
    t.text "bio", null: false
    t.bigint "character_id", null: false
    t.datetime "created_at", null: false
    t.bigint "game_id", null: false
    t.integer "height", null: false
    t.string "icon_url", null: false
    t.string "slug", null: false
    t.datetime "updated_at", null: false
    t.text "visual_description", null: false
    t.integer "weight", null: false
    t.index ["character_id"], name: "index_character_infos_on_character_id"
    t.index ["game_id"], name: "index_character_infos_on_game_id"
    t.index ["slug"], name: "index_character_infos_on_slug", unique: true
  end

  create_table "characters", force: :cascade do |t|
    t.boolean "active", default: true, null: false
    t.text "bio", null: false
    t.datetime "created_at", null: false
    t.date "first_appearance_date", null: false
    t.string "first_appearance_game", null: false
    t.string "icon_url", null: false
    t.string "name", null: false
    t.jsonb "search_names", default: [], null: false
    t.string "slug", null: false
    t.integer "sort_order", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_characters_on_slug", unique: true
  end

  create_table "developers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description", null: false
    t.date "founded", null: false
    t.string "logo_url", null: false
    t.string "name", null: false
    t.string "slug", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_developers_on_slug", unique: true
  end

  create_table "game_developers", force: :cascade do |t|
    t.integer "contribution_type", default: 0, null: false
    t.datetime "created_at", null: false
    t.bigint "developer_id", null: false
    t.bigint "game_id", null: false
    t.datetime "updated_at", null: false
    t.index ["developer_id"], name: "index_game_developers_on_developer_id"
    t.index ["game_id"], name: "index_game_developers_on_game_id"
  end

  create_table "games", force: :cascade do |t|
    t.boolean "active", default: true, null: false
    t.string "banner_url", null: false
    t.datetime "created_at", null: false
    t.text "description", null: false
    t.string "developer", null: false
    t.string "icon_url", null: false
    t.string "name", null: false
    t.integer "notation_type", default: 0, null: false
    t.string "primary_color", default: "#1A1A1B", null: false
    t.string "secondary_color", default: "#2D2D2E", null: false
    t.string "slug", null: false
    t.integer "sort_order", null: false
    t.string "tertiary_color", default: "#FF4500", null: false
    t.datetime "updated_at", null: false
    t.index ["slug"], name: "index_games_on_slug", unique: true
  end

  create_table "links", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.bigint "linkable_id", null: false
    t.string "linkable_type", null: false
    t.string "logo_url"
    t.string "name", null: false
    t.datetime "updated_at", null: false
    t.string "url", null: false
    t.index ["linkable_type", "linkable_id"], name: "index_links_on_linkable"
  end

  add_foreign_key "character_infos", "characters"
  add_foreign_key "character_infos", "games"
  add_foreign_key "game_developers", "developers"
  add_foreign_key "game_developers", "games"
end
