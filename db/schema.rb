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

ActiveRecord::Schema.define(version: 20131227182642) do

  create_table "agreements", force: true do |t|
    t.integer  "customer_id"
    t.integer  "costume_id"
    t.string   "title"
    t.date     "start"
    t.date     "end"
    t.date     "due"
    t.string   "financer"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agreements", ["costume_id"], name: "index_agreements_on_costume_id"
  add_index "agreements", ["customer_id"], name: "index_agreements_on_customer_id"

  create_table "costumes", force: true do |t|
    t.integer  "cid"
    t.string   "description"
    t.string   "wd"
    t.string   "photo"
    t.boolean  "back"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "mailbox"
    t.string   "wesid"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
