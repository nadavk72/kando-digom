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

ActiveRecord::Schema.define(version: 20140106225421) do

  create_table "addresses", force: true do |t|
    t.string   "street"
    t.integer  "streetNumber"
    t.string   "poBox"
    t.integer  "cityId"
    t.integer  "zip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cities", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "contacts", force: true do |t|
    t.string   "firstName"
    t.string   "lastName"
    t.string   "role"
    t.string   "phone"
    t.string   "ext"
    t.string   "fax"
    t.string   "cellPhone"
    t.string   "email"
    t.string   "responsible"
    t.integer  "contactable_id"
    t.string   "contactable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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
    t.time     "t_time"
    t.string   "PH"
    t.string   "conductivity"
  end

  create_table "factories", force: true do |t|
    t.string   "name"
    t.integer  "corporate_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "clientNumber"
    t.integer  "cityId"
    t.integer  "sectorId"
    t.string   "physicalNumber"
    t.integer  "sewageFarmId"
    t.boolean  "arrangement"
    t.integer  "waterSupplierId"
    t.boolean  "isActive"
    t.integer  "address_id"
    t.integer  "shipping_address_id"
  end

  create_table "sectors", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sewage_farms", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "water_suppliers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
