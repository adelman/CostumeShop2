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

ActiveRecord::Schema.define(version: 20140119183907) do

  create_table "agreement_costumes", force: true do |t|
    t.integer  "agreement_id"
    t.integer  "costume_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "agreement_costumes", ["agreement_id"], name: "index_agreement_costumes_on_agreement_id"
  add_index "agreement_costumes", ["costume_id"], name: "index_agreement_costumes_on_costume_id"

  create_table "agreements", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "mailbox"
    t.string   "wesid"
    t.string   "title"
    t.date     "start"
    t.date     "end"
    t.date     "due"
    t.string   "financer"
    t.string   "employee"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "costumes", force: true do |t|
    t.integer  "cid"
    t.string   "wd"
    t.text     "photo"
    t.boolean  "back"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "category"
    t.string   "primary"
    t.string   "secondary"
    t.string   "period"
    t.string   "label"
    t.string   "special"
    t.boolean  "lost"
    t.decimal  "value",      precision: 6, scale: 2
  end

  create_table "drycleans", force: true do |t|
    t.integer  "agreement_id"
    t.integer  "garment"
    t.integer  "invoice"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "drycleans", ["agreement_id"], name: "index_drycleans_on_agreement_id"

  create_table "searches", force: true do |t|
    t.integer  "costume_id"
    t.string   "category"
    t.string   "primary"
    t.string   "secondary"
    t.string   "period"
    t.string   "label"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
