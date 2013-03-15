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

ActiveRecord::Schema.define(:version => 20130227012749) do

  create_table "authors", :force => true do |t|
    t.integer  "blog_id"
    t.string   "name"
    t.string   "email"
    t.text     "bio"
    t.string   "website"
    t.string   "twitter"
    t.string   "linkedin"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "authors", ["blog_id"], :name => "index_authors_on_blog_id"

  create_table "blogs", :force => true do |t|
    t.string   "blog_name"
    t.string   "username"
    t.string   "password"
    t.string   "logo_location"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "comments", :force => true do |t|
    t.integer  "post_id"
    t.text     "content"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "comments", ["post_id"], :name => "index_comments_on_post_id"

  create_table "images", :force => true do |t|
    t.string   "image"
    t.integer  "post_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "images", ["post_id"], :name => "index_images_on_post_id"

  create_table "posts", :force => true do |t|
    t.integer  "author_id"
    t.string   "title"
    t.date     "published_date"
    t.boolean  "published"
    t.text     "summary"
    t.text     "content"
    t.string   "uri"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "posts", ["author_id"], :name => "index_posts_on_author_id"

  create_table "relateds", :force => true do |t|
    t.integer  "post_id"
    t.string   "uri"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "relateds", ["post_id"], :name => "index_relateds_on_post_id"

end
