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

ActiveRecord::Schema[7.1].define(version: 2024_03_03_183242) do
  create_table "fms_g16_loads", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.bigint "fms_g16_shipment_id"
    t.string "description"
    t.decimal "total_price", precision: 10
    t.decimal "total_fee", precision: 10
    t.decimal "total_weight", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fms_g16_shipment_id"], name: "index_fms_g16_loads_on_fms_g16_shipment_id"
  end

  create_table "fms_g16_orders", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "item"
    t.integer "price"
    t.integer "fee"
    t.integer "weight"
    t.string "dimension"
    t.string "LocationFrom"
    t.string "LocationTo"
    t.string "qty"
    t.bigint "fms_g16_load_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fms_g16_load_id"], name: "index_fms_g16_orders_on_fms_g16_load_id"
  end

  create_table "fms_g16_routes", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.string "origin_location"
    t.string "delivery_destination"
    t.decimal "origin_latitude", precision: 10
    t.decimal "origin_longitude", precision: 10
    t.decimal "destination_latitude", precision: 10
    t.decimal "destination_longitude", precision: 10
    t.decimal "distance", precision: 10
    t.decimal "estimated_time", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fms_g16_shipments", charset: "utf8mb3", force: :cascade do |t|
    t.string "name"
    t.date "start_date"
    t.date "end_date"
    t.bigint "fms_g16_route_id"
    t.string "vehicle"
    t.string "driver"
    t.integer "total_distance"
    t.string "tracking_code"
    t.string "total_drive_time"
    t.string "status"
    t.integer "quantity"
    t.decimal "current_load", precision: 10
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["fms_g16_route_id"], name: "index_fms_g16_shipments_on_fms_g16_route_id"
  end

  create_table "fms_g16_users", charset: "utf8mb3", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_fms_g16_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_fms_g16_users_on_reset_password_token", unique: true
  end

  add_foreign_key "fms_g16_loads", "fms_g16_shipments"
  add_foreign_key "fms_g16_orders", "fms_g16_loads"
  add_foreign_key "fms_g16_shipments", "fms_g16_routes"
end
