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

ActiveRecord::Schema.define(version: 20150402201108) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assigned_books", force: true do |t|
    t.integer "book_id"
    t.integer "bookclub_id"
  end

  create_table "authorizations", force: true do |t|
    t.integer "user_id"
    t.string  "provider"
    t.string  "uid"
  end

  create_table "bookclub_users", force: true do |t|
    t.integer "user_id"
    t.integer "bookclub_id"
    t.string  "role"
    t.string  "status"
  end

  create_table "bookclubs", force: true do |t|
    t.string "name"
  end

  create_table "books", force: true do |t|
    t.string   "title"
    t.string   "author"
    t.integer  "rating"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "cover"
  end

  create_table "discussions", force: true do |t|
    t.string   "discussion"
    t.integer  "user_id"
    t.integer  "assigned_book_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

end
