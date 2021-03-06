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

ActiveRecord::Schema.define(:version => 20140817020430) do

  create_table "filters", :force => true do |t|
    t.string   "url"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "men_categories", :force => true do |t|
    t.string  "type"
    t.integer "men_id"
  end

  create_table "pairs", :force => true do |t|
    t.string   "val1"
    t.string   "val2"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "type"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wcasualitems", :force => true do |t|
    t.string   "item"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wformalitems", :force => true do |t|
    t.string   "item"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "women_categories", :force => true do |t|
    t.string  "type"
    t.integer "women_id"
  end

  create_table "wworkitems", :force => true do |t|
    t.string   "item"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
