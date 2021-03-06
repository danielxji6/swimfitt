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

ActiveRecord::Schema.define(version: 20160319221156) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "full_name"
    t.float    "weight"
    t.float    "height"
    t.integer  "age"
    t.string   "gender"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "level"
    t.integer  "diff"
    t.datetime "start_time"
    t.datetime "end_time"
    t.string   "s1_type"
    t.integer  "s1_dis"
    t.string   "s2_type"
    t.integer  "s2_dis"
    t.string   "s3_type"
    t.integer  "s3_dis"
    t.string   "s4_type"
    t.integer  "s4_dis"
    t.string   "s5_type"
    t.integer  "s5_dis"
    t.string   "s6_type"
    t.integer  "s6_dis"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "workouts", ["user_id"], name: "index_workouts_on_user_id", using: :btree

  add_foreign_key "workouts", "users"
end
