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

ActiveRecord::Schema.define(version: 20150603181149) do

  create_table "merchants", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "description"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "postcode"
    t.string   "country"
    t.string   "website"
    t.string   "phone_number"
    t.string   "google_url"
    t.string   "google_place_id"
    t.string   "google_rating"
    t.string   "google_num_reviews"
    t.string   "google_price_level"
    t.decimal  "lat",                precision: 10, scale: 6
    t.decimal  "lng",                precision: 10, scale: 6
    t.text     "offer_schedule"
  end

  add_index "merchants", ["user_id"], name: "index_merchants_on_user_id"

  create_table "offers", force: :cascade do |t|
    t.string   "name"
    t.string   "comment"
    t.date     "start_date"
    t.time     "start_time"
    t.integer  "duration"
    t.date     "terminates_on_date"
    t.boolean  "sunday"
    t.boolean  "monday"
    t.boolean  "tuesday"
    t.boolean  "wednesday"
    t.boolean  "thursday"
    t.boolean  "friday"
    t.boolean  "saturday"
    t.boolean  "active"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "photos", force: :cascade do |t|
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.string   "image"
    t.integer  "merchant_id"
  end

  add_index "photos", ["merchant_id"], name: "index_photos_on_merchant_id"

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
