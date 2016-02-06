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

  create_view :hot_posts,  sql_definition: <<-SQL
      WITH posts_with_age AS (
           SELECT posts.id,
              posts.developer_id,
              posts.body,
              posts.created_at,
              posts.updated_at,
              posts.channel_id,
              posts.title,
              posts.slug,
              posts.likes,
              posts.tweeted,
              posts.published_at,
              GREATEST((date_part('epoch'::text, (now() - posts.published_at)) / (3600)::double precision), (0.1)::double precision) AS hour_age
             FROM posts
            WHERE (posts.published_at IS NOT NULL)
          )
   SELECT ((posts_with_age.likes)::double precision / (posts_with_age.hour_age ^ (0.8)::double precision)) AS score,
      posts_with_age.id,
      posts_with_age.developer_id,
      posts_with_age.body,
      posts_with_age.created_at,
      posts_with_age.updated_at,
      posts_with_age.channel_id,
      posts_with_age.title,
      posts_with_age.slug,
      posts_with_age.likes,
      posts_with_age.tweeted,
      posts_with_age.published_at,
      posts_with_age.hour_age
     FROM posts_with_age
    ORDER BY ((posts_with_age.likes)::double precision / (posts_with_age.hour_age ^ (0.8)::double precision)) DESC;
  SQL

  create_view :developer_scores,  sql_definition: <<-SQL
      SELECT developers.id,
      developers.username,
      stats.posts,
      stats.likes,
      round(((stats.likes)::numeric / (stats.posts)::numeric), 2) AS avg_likes,
      round(log((2)::numeric, ((((1022)::double precision * ((developer_scores.score - min(developer_scores.score) OVER ()) / (max(developer_scores.score) OVER () - min(developer_scores.score) OVER ()))) + (2)::double precision))::numeric), 1) AS hotness
     FROM ((developers
       JOIN ( SELECT hot_posts.developer_id AS id,
              sum(hot_posts.score) AS score
             FROM hot_posts
            GROUP BY hot_posts.developer_id) developer_scores USING (id))
       JOIN ( SELECT posts.developer_id AS id,
              count(*) AS posts,
              sum(posts.likes) AS likes
             FROM posts
            GROUP BY posts.developer_id) stats USING (id));
  SQL

end
