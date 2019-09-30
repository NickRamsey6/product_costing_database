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

ActiveRecord::Schema.define(version: 2019_09_30_032405) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "ingredients"
    t.integer "cost"
    t.integer "store_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.integer "daily_sales"
    t.integer "labor"
    t.integer "cheese"
    t.integer "pepperoni"
    t.integer "meat_lover"
    t.integer "bbq_chicken"
    t.integer "carne_amante"
    t.integer "buffalo_chicken"
    t.integer "chicken_bacon_ranch"
    t.integer "italian_sausage"
    t.integer "hawaiian"
    t.integer "garlic_vegetarian"
    t.integer "chicken_pesto"
    t.integer "mediterranean"
    t.integer "tuscan_veggie"
    t.integer "margherita"
    t.integer "prime_rib"
    t.integer "thai_chicken"
    t.integer "gyro"
    t.integer "coconut_shrimp"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "products", "stores"
end
