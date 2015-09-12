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

ActiveRecord::Schema.define(version: 20150912160650) do

  create_table "genres", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "notifications", force: :cascade do |t|
    t.integer  "problem_id",  limit: 4,                     null: false
    t.string   "title",       limit: 255,                   null: false
    t.text     "description", limit: 65535,                 null: false
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
    t.boolean  "opened",                    default: false
  end

  create_table "person_charts", force: :cascade do |t|
    t.integer  "point",      limit: 4, null: false
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "times",      limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "problems", force: :cascade do |t|
    t.string   "title",      limit: 255,                   null: false
    t.text     "question",   limit: 65535,                 null: false
    t.string   "flag",       limit: 255,                   null: false
    t.integer  "user_id",    limit: 4
    t.boolean  "opened",                   default: false
    t.integer  "point",      limit: 4,                     null: false
    t.integer  "genre_id",   limit: 4,                     null: false
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "sent_flags", force: :cascade do |t|
    t.string   "flag",       limit: 255, null: false
    t.integer  "user_id",    limit: 4,   null: false
    t.integer  "problem_id", limit: 4,   null: false
    t.boolean  "collect",                null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "solves", force: :cascade do |t|
    t.integer  "user_id",    limit: 4, null: false
    t.integer  "problem_id", limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "team_charts", force: :cascade do |t|
    t.integer  "point",      limit: 4, null: false
    t.integer  "team_id",    limit: 4, null: false
    t.integer  "times",      limit: 4, null: false
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "team_solves", force: :cascade do |t|
    t.integer  "team_id",    limit: 4
    t.integer  "problem_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",       limit: 255, null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "encrypted_password",     limit: 255, default: "",    null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,     null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "account",                limit: 255,                 null: false
    t.boolean  "admin_flag",                         default: false
    t.integer  "team_id",                limit: 4
    t.string   "email",                  limit: 255
  end

  add_index "users", ["account"], name: "index_users_on_account", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
