# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150907143333) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "air_prices", force: :cascade do |t|
    t.float    "price"
    t.float    "charge"
    t.float    "discount"
    t.integer  "air_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "rank"
  end

  create_table "airs", force: :cascade do |t|
    t.string   "model"
    t.string   "from"
    t.string   "to"
    t.string   "departure_time"
    t.string   "arrive_time"
    t.string   "from_station"
    t.string   "to_station"
    t.string   "from_station_address"
    t.string   "to_station_address"
    t.float    "miles"
    t.string   "company"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "name"
    t.integer  "trip_ied"
  end

  create_table "bus_prices", force: :cascade do |t|
    t.integer  "bus_id"
    t.float    "price"
    t.float    "charge"
    t.float    "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "trip_id"
    t.integer  "rank"
  end

  create_table "buses", force: :cascade do |t|
    t.string   "from"
    t.string   "to"
    t.string   "departure_time"
    t.string   "arrive_time"
    t.string   "from_station"
    t.string   "to_station"
    t.string   "from_station_address"
    t.string   "to_station_address"
    t.float    "miles"
    t.string   "company"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "name"
    t.string   "model"
  end

  create_table "car_prices", force: :cascade do |t|
    t.integer  "rank"
    t.float    "price"
    t.float    "charge"
    t.float    "discount"
    t.integer  "trip_id"
    t.datetime "notice_time"
    t.float    "miles"
    t.integer  "car_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "cars", force: :cascade do |t|
    t.integer  "identity"
    t.string   "host_name"
    t.string   "host_id"
    t.integer  "rank"
    t.float    "unit"
    t.float    "starting_price"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hotels", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.integer  "rank"
    t.string   "province"
    t.string   "city"
    t.string   "distinct"
    t.string   "road"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "positional_titles", force: :cascade do |t|
    t.string   "position"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "room_prices", force: :cascade do |t|
    t.integer  "room_id"
    t.float    "price"
    t.float    "charge"
    t.float    "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.integer  "hotel_id"
    t.integer  "kind"
    t.integer  "people"
    t.boolean  "pc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "price"
    t.float    "charge"
    t.float    "discount"
  end

  create_table "train_prices", force: :cascade do |t|
    t.integer  "train_id"
    t.float    "price"
    t.float    "charge"
    t.float    "discount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "trip_id"
    t.integer  "rank"
  end

  create_table "trains", force: :cascade do |t|
    t.string   "from"
    t.string   "to"
    t.string   "departure_time"
    t.string   "arrive_time"
    t.string   "from_station"
    t.string   "to_station"
    t.string   "from_station_address"
    t.string   "to_station_address"
    t.float    "miles"
    t.string   "company"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "name"
    t.string   "model"
  end

  create_table "travel_orders", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "phone"
    t.string   "fax"
    t.string   "tax_delivery_address"
    t.string   "emergency_contact_name"
    t.string   "emergency_contact_phone"
    t.string   "emergency_contact_address"
    t.string   "from"
    t.string   "to"
    t.integer  "types"
    t.integer  "status"
    t.integer  "transports"
    t.float    "budget"
    t.string   "email"
    t.datetime "estimate_departure_time"
    t.datetime "estimate_arrive_time"
    t.datetime "departure_time"
    t.datetime "arrive_time"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.integer  "hotel_ranks"
    t.integer  "pick_ups"
    t.text     "memo"
    t.string   "serial_id"
    t.float    "fee"
    t.integer  "citizen_id"
  end

  create_table "trips", force: :cascade do |t|
    t.string   "from_location"
    t.string   "to_location"
    t.datetime "departure_time"
    t.datetime "arrive_time"
    t.integer  "way"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "travel_order_id"
    t.float    "price"
    t.integer  "bus_price_id"
    t.integer  "train_price_id"
    t.integer  "air_price_id"
    t.integer  "room_price_id"
    t.integer  "car_price_id"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.string   "mobile"
    t.string   "phone"
    t.string   "fax"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "address"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.integer  "role",                   default: 0
    t.string   "avatar"
  end

  add_index "users", ["confirmation_token"], name: "index_users_on_confirmation_token", unique: true, using: :btree
  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["name"], name: "index_users_on_name", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["unlock_token"], name: "index_users_on_unlock_token", unique: true, using: :btree

end
