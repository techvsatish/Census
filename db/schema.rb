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

ActiveRecord::Schema.define(version: 20210211062759) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expenses", force: :cascade do |t|
    t.string "hsda"
    t.string "ha"
    t.string "service"
    t.string "service_type"
    t.string "m_20052006"
    t.string "m_20062007"
    t.string "m_20072008"
    t.string "m_20082009"
    t.string "m_20092010"
    t.string "f_20052006"
    t.string "f_20062007"
    t.string "f_20072008"
    t.string "f_20082009"
    t.string "f_20092010"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statistics", force: :cascade do |t|
    t.string "dimension"
    t.string "british_columbia"
    t.string "ha_total"
    t.string "ha1_interior"
    t.string "ha2_fraser"
    t.string "ha3_vancouver_coastal"
    t.string "ha4_vancouver_island"
    t.string "ha5_northern"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "username"
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
