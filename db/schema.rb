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

ActiveRecord::Schema.define(version: 20140630195307) do

  create_table "browsers", force: true do |t|
    t.integer  "visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "events", force: true do |t|
    t.integer  "visit_action_id"
    t.string   "event_category"
    t.string   "event_action"
    t.string   "event_label"
    t.string   "event_value"
    t.string   "custom"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "locations", force: true do |t|
    t.integer  "visit_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "performances", force: true do |t|
    t.integer  "visit_action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.datetime "user_day_since_last"
    t.datetime "user_day_since_first"
    t.boolean  "user_returning"
    t.integer  "user_visit_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "visit_actions", force: true do |t|
    t.integer  "visit_id"
    t.datetime "server_time"
    t.string   "url"
    t.string   "referrer_url"
    t.string   "page_title"
    t.string   "page"
    t.string   "entity"
    t.string   "subject"
    t.datetime "total_time_on_action"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
  end

  create_table "visits", force: true do |t|
    t.integer  "user_id"
    t.datetime "first_action_time"
    t.datetime "last_action_time"
    t.string   "entry_url"
    t.string   "exit_url"
    t.integer  "total_events"
    t.datetime "total_time"
    t.integer  "total_searches"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
