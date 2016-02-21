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

ActiveRecord::Schema.define(version: 20160221090410) do

  create_table "comments", force: :cascade do |t|
    t.text     "content"
    t.integer  "place_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "upvotes"
  end

  add_index "comments", ["place_id"], name: "index_comments_on_place_id"

  create_table "places", force: :cascade do |t|
    t.string   "name"
    t.float    "locationx"
    t.float    "locationy"
    t.integer  "clicks"
    t.integer  "crowd_max"
    t.integer  "crowd_current"
    t.integer  "noise_max"
    t.integer  "noise_num"
    t.integer  "comfort_max"
    t.integer  "comfort_num"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.text     "description"
  end

end
