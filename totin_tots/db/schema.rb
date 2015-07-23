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

ActiveRecord::Schema.define(version: 20150722200834) do

  create_table "items", force: :cascade do |t|
    t.string   "name"
    t.string   "age_group"
    t.string   "weather"
    t.string   "activity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "quantity"
  end

  create_table "items_and_lists", id: false, force: :cascade do |t|
    t.integer "item_id"
    t.integer "list_id"
  end

  add_index "items_and_lists", ["item_id"], name: "index_items_and_lists_on_item_id"
  add_index "items_and_lists", ["list_id"], name: "index_items_and_lists_on_list_id"

  create_table "lists", force: :cascade do |t|
    t.string   "item_name"
    t.string   "age_group"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "status"
  end

end
