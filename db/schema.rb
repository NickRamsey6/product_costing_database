# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_10_02_202520) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "masters", force: :cascade do |t|
    t.date "day"
    t.decimal "nc_sales"
    t.decimal "nc_labor"
    t.decimal "mi_sales"
    t.decimal "mi_labor"
    t.decimal "tm_sales"
    t.decimal "tm_labor"
    t.decimal "is_sales"
    t.decimal "is_labor"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "store_id"
    t.integer "product_id"
    t.date "date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "materials"
    t.decimal "cost"
    t.decimal "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "orders", "products"
end
