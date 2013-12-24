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

ActiveRecord::Schema.define(version: 20131224165133) do

  create_table "bookingcars", force: true do |t|
    t.integer  "car_id"
    t.integer  "user_id"
    t.string   "destination"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "participant"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "bookingrooms", force: true do |t|
    t.integer  "room_id"
    t.integer  "user_id"
    t.string   "meeting"
    t.text     "description"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer  "participant"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cars", force: true do |t|
    t.string   "police_number"
    t.string   "merk"
    t.integer  "capacity"
    t.integer  "driver_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "divisions", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "levels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "rooms", force: true do |t|
    t.string   "name"
    t.integer  "capacity"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "nik"
    t.string   "username"
    t.string   "password"
    t.string   "name"
    t.string   "email"
    t.integer  "division_id"
    t.integer  "level_id"
    t.text     "address"
    t.string   "telp"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
