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

ActiveRecord::Schema.define(version: 20210211075951) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "expenses", force: :cascade do |t|
    t.string "hsda"
    t.string "ha"
    t.string "service"
    t.string "service_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "m_20052006", precision: 15, scale: 2
    t.decimal "m_20062007", precision: 15, scale: 2
    t.decimal "m_20072008", precision: 15, scale: 2
    t.decimal "m_20082009", precision: 15, scale: 2
    t.decimal "m_20092010", precision: 15, scale: 2
    t.decimal "f_20052006", precision: 15, scale: 2
    t.decimal "f_20062007", precision: 15, scale: 2
    t.decimal "f_20072008", precision: 15, scale: 2
    t.decimal "f_20082009", precision: 15, scale: 2
    t.decimal "f_20092010", precision: 15, scale: 2
  end

  create_table "statistics", force: :cascade do |t|
    t.string "dimension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "british_columbia", precision: 15, scale: 2
    t.decimal "ha_total", precision: 15, scale: 2
    t.decimal "ha1_interior", precision: 15, scale: 2
    t.decimal "ha2_fraser", precision: 15, scale: 2
    t.decimal "ha3_vancouver_coastal", precision: 15, scale: 2
    t.decimal "ha4_vancouver_island", precision: 15, scale: 2
    t.decimal "ha5_northern", precision: 15, scale: 2
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
