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

ActiveRecord::Schema.define(version: 20131212215609) do

  create_table "corporates", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "digoms", force: true do |t|
    t.string   "corp"
    t.string   "factory"
    t.string   "persents"
    t.integer  "numOfFlows"
    t.string   "flowType"
    t.string   "notes"
    t.string   "lab"
    t.string   "samplerName"
    t.string   "parameters"
    t.boolean  "executed"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "digomId"
    t.string   "counter_call"
    t.string   "owner"
    t.date     "d_date"
  end

  create_table "factories", force: true do |t|
    t.string   "name"
    t.integer  "corporate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
