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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120921073132) do

  create_table "artworks", :force => true do |t|
    t.string   "alt"
    t.string   "artwork"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "blogs", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.text     "body"
    t.string   "artwork"
    t.datetime "publish_date"
    t.boolean  "draft"
    t.string   "teaser"
    t.string   "slug"
  end

  add_index "blogs", ["slug"], :name => "index_blogs_on_slug"

  create_table "goodies", :force => true do |t|
    t.string   "title"
    t.string   "author"
    t.string   "artwork"
    t.string   "download_url"
    t.text     "teaser"
    t.text     "body"
    t.datetime "created_at",             :null => false
    t.datetime "updated_at",             :null => false
    t.boolean  "draft"
    t.string   "slug"
    t.string   "call_to_action_artwork"
    t.string   "call_to_action_header"
    t.string   "call_to_action_teaser"
    t.boolean  "has_call_to_action"
    t.string   "share_text"
    t.string   "share_link_text"
    t.string   "homepage_artwork"
  end

  add_index "goodies", ["slug"], :name => "index_goodies_on_slug"

  create_table "users", :force => true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
