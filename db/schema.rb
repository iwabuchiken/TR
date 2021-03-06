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

ActiveRecord::Schema.define(:version => 20121118042440) do

  create_table "genres", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "langs", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sub_genres", :force => true do |t|
    t.string   "name"
    t.integer  "genre_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "texts", :force => true do |t|
    t.text     "text"
    t.string   "url"
    t.integer  "lang_id"
    t.integer  "genre_id"
    t.string   "sub_genre_id"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "word_sets", :force => true do |t|
    t.string   "word_a"
    t.string   "word_b"
    t.string   "word_c"
    t.integer  "lang_id"
    t.integer  "text_id"
    t.string   "text_ids"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
