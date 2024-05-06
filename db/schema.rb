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

ActiveRecord::Schema[7.1].define(version: 2024_05_06_131320) do
  create_table "body_parts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "category_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "outfit_category", force: :cascade do |t|
    t.integer "outfits_id"
    t.integer "categories_id"
    t.index ["categories_id"], name: "index_outfit_category_on_categories_id"
    t.index ["outfits_id"], name: "index_outfit_category_on_outfits_id"
  end

  create_table "outfit_pieces", force: :cascade do |t|
    t.integer "outfits_id"
    t.integer "pieces_id"
    t.index ["outfits_id"], name: "index_outfit_pieces_on_outfits_id"
    t.index ["pieces_id"], name: "index_outfit_pieces_on_pieces_id"
  end

  create_table "outfits", force: :cascade do |t|
    t.string "name"
    t.boolean "visibility"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "piece_category", force: :cascade do |t|
    t.integer "pieces_id"
    t.integer "categories_id"
    t.index ["categories_id"], name: "index_piece_category_on_categories_id"
    t.index ["pieces_id"], name: "index_piece_category_on_pieces_id"
  end

  create_table "pieces", force: :cascade do |t|
    t.string "name"
    t.string "origin"
    t.string "buy_link"
    t.integer "size_id"
    t.integer "body_part_id"
    t.boolean "visibility"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sizes", force: :cascade do |t|
    t.string "fr_name"
    t.string "eu_name"
    t.string "us_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
