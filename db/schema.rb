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

ActiveRecord::Schema[7.1].define(version: 2024_02_27_140316) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.bigint "route_id", null: false
    t.bigint "vehicle_id", null: false
    t.bigint "driver_id", null: false
    t.datetime "departure_time"
    t.datetime "arrival_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_assignments_on_driver_id"
    t.index ["route_id"], name: "index_assignments_on_route_id"
    t.index ["vehicle_id"], name: "index_assignments_on_vehicle_id"
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name"
    t.string "license_number"
    t.bigint "vehicle_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["vehicle_id"], name: "index_drivers_on_vehicle_id"
  end

  create_table "load_plans", force: :cascade do |t|
    t.bigint "shipment_id", null: false
    t.bigint "product_id", null: false
    t.integer "quantity", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_load_plans_on_product_id"
    t.index ["shipment_id"], name: "index_load_plans_on_shipment_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.decimal "weight"
    t.string "dimensions"
    t.integer "quantity"
    t.bigint "warehouse_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["warehouse_id"], name: "index_products_on_warehouse_id"
  end

  create_table "routes", force: :cascade do |t|
    t.string "name"
    t.string "start_location"
    t.string "end_location"
    t.decimal "distance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "shipments", force: :cascade do |t|
    t.date "shipment_date"
    t.bigint "to_warehouse_id", null: false
    t.bigint "from_warehouse_id", null: false
    t.bigint "product_id", null: false
    t.bigint "vehicle_id", null: false
    t.bigint "driver_id", null: false
    t.string "from_location"
    t.string "to_location"
    t.float "to_lat"
    t.float "to_long"
    t.float "from_lat"
    t.float "from_long"
    t.integer "total_distance"
    t.string "tracking_code"
    t.string "total_drive_time"
    t.string "status"
    t.integer "quantity"
    t.decimal "current_load"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["driver_id"], name: "index_shipments_on_driver_id"
    t.index ["from_warehouse_id"], name: "index_shipments_on_from_warehouse_id"
    t.index ["product_id"], name: "index_shipments_on_product_id"
    t.index ["to_warehouse_id"], name: "index_shipments_on_to_warehouse_id"
    t.index ["vehicle_id"], name: "index_shipments_on_vehicle_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "vehicles", force: :cascade do |t|
    t.string "name"
    t.string "vehicle_type"
    t.decimal "capacity"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.float "latitude"
    t.float "longitude"
    t.integer "capacity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "assignments", "drivers"
  add_foreign_key "assignments", "routes"
  add_foreign_key "assignments", "vehicles"
  add_foreign_key "drivers", "vehicles"
  add_foreign_key "load_plans", "products"
  add_foreign_key "load_plans", "shipments"
  add_foreign_key "products", "warehouses"
  add_foreign_key "shipments", "drivers"
  add_foreign_key "shipments", "products"
  add_foreign_key "shipments", "vehicles"
  add_foreign_key "shipments", "warehouses", column: "from_warehouse_id"
  add_foreign_key "shipments", "warehouses", column: "to_warehouse_id"
end
