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

ActiveRecord::Schema[7.0].define(version: 2022_09_07_062950) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "articles", force: :cascade do |t|
    t.string "name"
    t.string "brand"
    t.string "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bike_characteristics", force: :cascade do |t|
    t.bigint "article_id", null: false
    t.integer "kind"
    t.integer "break_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_bike_characteristics_on_article_id"
  end

  create_table "snowboard_characteristics", force: :cascade do |t|
    t.bigint "article_id", null: false
    t.string "length"
    t.integer "kind"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_snowboard_characteristics_on_article_id"
  end

  create_table "surfboard_characteristics", force: :cascade do |t|
    t.bigint "article_id", null: false
    t.string "length"
    t.integer "kind"
    t.string "dimensions"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["article_id"], name: "index_surfboard_characteristics_on_article_id"
  end

  add_foreign_key "bike_characteristics", "articles"
  add_foreign_key "snowboard_characteristics", "articles"
  add_foreign_key "surfboard_characteristics", "articles"
end
