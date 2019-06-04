# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_06_04_143857) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "farmer_photos", force: :cascade do |t|
    t.bigint "farmer_id"
    t.string "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["farmer_id"], name: "index_farmer_photos_on_farmer_id"
  end

  create_table "farmers", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "address"
    t.float "lat"
    t.float "long"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_farmers_on_user_id"
  end

  create_table "order_products", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "product_id"
    t.integer "quantity"
    t.string "status"
    t.string "product_sku"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_price_cents", default: 0, null: false
    t.index ["order_id"], name: "index_order_products_on_order_id"
    t.index ["product_id"], name: "index_order_products_on_product_id"
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "payment"
    t.integer "total_price_cents", default: 0, null: false
    t.index ["restaurant_id"], name: "index_orders_on_restaurant_id"
  end

  create_table "product_photos", force: :cascade do |t|
    t.bigint "product_id"
    t.string "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_product_photos_on_product_id"
  end

  create_table "products", force: :cascade do |t|
    t.bigint "farmer_id"
    t.string "name"
    t.string "category"
    t.string "sku"
    t.string "unit_of_measurement"
    t.integer "inventory"
    t.float "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
    t.integer "price_cents", default: 0, null: false
    t.index ["farmer_id"], name: "index_products_on_farmer_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.string "address"
    t.float "lat"
    t.float "long"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_restaurants_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.bigint "restaurant_id"
    t.text "description"
    t.integer "rating"
    t.bigint "order_product_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_product_id"], name: "index_reviews_on_order_product_id"
    t.index ["restaurant_id"], name: "index_reviews_on_restaurant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "avatar"
    t.string "role"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "farmer_photos", "farmers"
  add_foreign_key "farmers", "users"
  add_foreign_key "order_products", "orders"
  add_foreign_key "order_products", "products"
  add_foreign_key "orders", "restaurants"
  add_foreign_key "product_photos", "products"
  add_foreign_key "products", "farmers"
  add_foreign_key "restaurants", "users"
  add_foreign_key "reviews", "order_products"
  add_foreign_key "reviews", "restaurants"
end
