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

ActiveRecord::Schema.define(version: 2019_04_24_061910) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "regions", force: :cascade do |t|
    t.text "name"
    t.text "state"
    t.text "history"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "regions_varieties", id: false, force: :cascade do |t|
    t.integer "region_id"
    t.integer "variety_id"
  end

  create_table "varieties", force: :cascade do |t|
    t.text "name"
    t.text "color"
    t.text "origin"
    t.text "food"
    t.text "history"
    t.text "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "varieties_wineries", id: false, force: :cascade do |t|
    t.integer "variety_id"
    t.integer "winery_id"
  end

  create_table "wineries", force: :cascade do |t|
    t.text "name"
    t.date "year"
    t.text "founder"
    t.text "history"
    t.text "image"
    t.integer "region_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
