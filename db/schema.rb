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

ActiveRecord::Schema.define(version: 2018_11_13_161634) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "experts", force: :cascade do |t|
    t.string "name"
    t.string "major"
    t.text "bio"
    t.decimal "rate"
    t.string "service_id"
    t.string "integer"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.integer "expert_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.date "dob"
    t.string "city"
    t.string "email"
    t.integer "phone"
    t.boolean "pregcase1"
    t.boolean "healthproblem"
    t.boolean "pregcase2"
    t.boolean "motordevelopment"
    t.boolean "languagedevelopment"
    t.integer "wordshas"
    t.boolean "interventionreceived"
    t.boolean "regresskills"
    t.boolean "medicalissue"
    t.boolean "repetitivebehav"
    t.boolean "socialinteraction"
    t.boolean "eyecontact"
    t.boolean "gesture"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "expert_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "about"
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
    t.string "gender"
    t.string "country"
    t.string "city"
    t.integer "phone_number"
    t.datetime "last_seen_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end
   create_table "userls", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "login"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
