# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110923230303) do

  create_table "exp_perticulers", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "expence_perticulers", :force => true do |t|
    t.integer "expence_id"
    t.float   "exp_value"
    t.string  "cluser_name"
    t.string  "shop_name"
    t.date    "date"
    t.integer "total",          :default => 0
    t.integer "adjusted_total", :default => 0
    t.string  "description"
  end

  create_table "expences", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "exp_type",   :default => false
  end

  create_table "exps", :force => true do |t|
    t.integer  "exp_perticuler_id"
    t.integer  "exp_value"
    t.string   "cluster_name"
    t.string   "shop_name"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
