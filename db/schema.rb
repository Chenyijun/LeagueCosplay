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

ActiveRecord::Schema.define(version: 20151226022555) do

  create_table "guides", force: true do |t|
    t.string   "title"
    t.string   "type"
    t.string   "creator"
    t.string   "creator_link"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "active"
    t.string   "link"
    t.text     "description"
    t.string   "photo"
  end

  create_table "skins", force: true do |t|
    t.string   "champion"
    t.string   "name"
    t.string   "type"
    t.string   "hair_length"
    t.string   "hair_color"
    t.string   "armor"
    t.string   "gender"
    t.string   "faction"
    t.string   "race"
    t.string   "difficulty"
    t.boolean  "wings"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_champions", force: true do |t|
    t.integer  "user_id"
    t.integer  "skin_id"
    t.string   "photo"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.text     "bio"
    t.string   "contactUrl"
    t.string   "email"
    t.string   "password"
    t.string   "role"
    t.string   "photos"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
