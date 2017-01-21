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

ActiveRecord::Schema.define(version: 20170121064302) do

  create_table "days", force: true do |t|
    t.integer  "day_num"
    t.string   "guarded_player_id"
    t.string   "attacked_player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "memos", force: true do |t|
    t.string   "body"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", force: true do |t|
    t.string   "name"
    t.string   "real_role"
    t.string   "opened_role"
    t.integer  "role_opened_date"
    t.boolean  "is_living"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "predict_results", force: true do |t|
    t.integer  "player_id"
    t.string   "results"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "psychic_results", force: true do |t|
    t.integer  "player_id"
    t.string   "results"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tasks", force: true do |t|
    t.string   "name"
    t.string   "baby_step"
    t.text     "description"
    t.integer  "project_id"
    t.integer  "sprint_id"
    t.integer  "group_id"
    t.integer  "sub_group_id"
    t.integer  "parent_task_id"
    t.string   "child_task_ids"
    t.integer  "expected_spended_hour"
    t.integer  "expected_spended_minute"
    t.integer  "actual_spended_hour"
    t.integer  "actual_spended_minute"
    t.datetime "expected_start_date"
    t.datetime "actual_start_date"
    t.datetime "expected_end_date"
    t.datetime "actual_end_date"
    t.integer  "rank"
    t.integer  "story_point"
    t.integer  "importance"
    t.integer  "urgency"
    t.integer  "clarity"
    t.integer  "difficulty"
    t.integer  "progress_status"
    t.boolean  "delete_flg"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin",           default: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["remember_token"], name: "index_users_on_remember_token"

  create_table "vote_results", force: true do |t|
    t.string   "player_id"
    t.string   "afternoon_id"
    t.string   "target_player_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
