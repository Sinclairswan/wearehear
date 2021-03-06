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

ActiveRecord::Schema.define(version: 20170823225255) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bouquets", force: :cascade do |t|
    t.string "sender_name"
    t.string "receiver_name"
    t.integer "sender_id"
    t.integer "song_id"
    t.string "custom_location"
    t.integer "location_id"
    t.datetime "expiration_date"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "secret"
    t.string "image"
  end

  create_table "locations", force: :cascade do |t|
    t.float "lat"
    t.float "lng"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "artist"
    t.string "album"
    t.string "track"
    t.string "spotify_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "texts", force: :cascade do |t|
    t.string "number"
    t.string "sender"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "special_path"
    t.string "image"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "provider"
    t.string "uid"
    t.string "phone"
    t.string "username"
    t.string "picture_url"
    t.datetime "birthdate"
    t.string "token"
    t.string "refresh_token"
    t.string "playlist"
    t.integer "expiration"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
