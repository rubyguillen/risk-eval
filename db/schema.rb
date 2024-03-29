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

ActiveRecord::Schema.define(version: 20140905222744) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "physical_abuses", force: true do |t|
    t.boolean  "broken_bone"
    t.boolean  "bruise_cuts"
    t.boolean  "head_injury_trauma"
    t.boolean  "internal_injury"
    t.boolean  "scald_burn"
    t.boolean  "critically_injured"
    t.boolean  "death"
    t.string   "other"
    t.string   "substantiated"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "physical_abuses", ["user_id"], name: "index_physical_abuses_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "agency"
    t.integer  "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", using: :btree

end
