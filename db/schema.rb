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

ActiveRecord::Schema.define(version: 20160205153837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authem_sessions", force: :cascade do |t|
    t.string   "role",                    null: false
    t.integer  "subject_id",              null: false
    t.string   "subject_type",            null: false
    t.string   "token",        limit: 60, null: false
    t.datetime "expires_at",              null: false
    t.integer  "ttl",                     null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "authem_sessions", ["expires_at", "subject_type", "subject_id"], name: "index_authem_sessions_subject", using: :btree
  add_index "authem_sessions", ["expires_at", "token"], name: "index_authem_sessions_on_expires_at_and_token", unique: true, using: :btree

  create_table "channels", force: :cascade do |t|
    t.text     "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "developers", force: :cascade do |t|
    t.string   "email",                                 null: false
    t.string   "username",                              null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.string   "twitter_handle"
    t.boolean  "admin",          default: false,        null: false
    t.string   "editor",         default: "Text Field"
    t.string   "slack_name"
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "developer_id",                 null: false
    t.text     "body",                         null: false
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
    t.integer  "channel_id",                   null: false
    t.string   "title",                        null: false
    t.string   "slug",                         null: false
    t.integer  "likes",        default: 1,     null: false
    t.boolean  "tweeted",      default: false, null: false
    t.datetime "published_at"
  end

  add_index "posts", ["channel_id"], name: "index_posts_on_channel_id", using: :btree
  add_index "posts", ["developer_id"], name: "index_posts_on_developer_id", using: :btree

  add_foreign_key "posts", "channels"
  add_foreign_key "posts", "developers"
end
