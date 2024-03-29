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

ActiveRecord::Schema.define(version: 20141106040252) do

  create_table "contracts", force: true do |t|
    t.integer  "plan_id"
    t.string   "hnumber"
    t.string   "organization"
    t.string   "plan_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "geographies", force: true do |t|
    t.string   "state"
    t.string   "county"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ma_enrollments", force: true do |t|
    t.integer  "geo_ID"
    t.string   "hnumber"
    t.string   "org_name"
    t.string   "org_type"
    t.string   "plan_type"
    t.integer  "enrollment"
    t.date     "enrollment_at"
    t.datetime "created_at"
  end

  create_table "medicare_beneficiaries", force: true do |t|
    t.integer  "geo_id"
    t.integer  "ma_enrollment"
    t.integer  "ffs_beneficiaries"
    t.integer  "eligibles"
    t.float    "ma_penetration"
    t.date     "beneficiaries_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "plans", force: true do |t|
    t.string   "name"
    t.integer  "parent_id"
    t.datetime "acquired_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
