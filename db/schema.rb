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

ActiveRecord::Schema[7.0].define(version: 2022_08_15_170048) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apartment_images", force: :cascade do |t|
    t.text "apart_image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "apartment_id", null: false
    t.index ["apartment_id"], name: "index_apartment_images_on_apartment_id"
  end

  create_table "apartments", force: :cascade do |t|
    t.string "name"
    t.text "address"
    t.text "image"
    t.integer "price"
    t.string "city"
    t.integer "capacity"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.date "startDate"
    t.date "endDate"
    t.integer "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "apartment_id", null: false
    t.bigint "user_id", null: false
    t.index ["apartment_id"], name: "index_reservations_on_apartment_id"
    t.index ["user_id"], name: "index_reservations_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.boolean "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "apartment_images", "apartments"
  add_foreign_key "reservations", "apartments"
  add_foreign_key "reservations", "users"
end
