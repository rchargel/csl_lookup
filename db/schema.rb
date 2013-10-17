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

ActiveRecord::Schema.define(version: 20131017043858) do

  create_table "countries", force: true do |t|
    t.string   "name",          limit: 100
    t.string   "official_name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "iso2_code",     limit: 2
    t.string   "iso3_code",     limit: 3
  end

  add_index "countries", ["name"], name: "index_countries_on_name", unique: true

  create_table "country_languages", force: true do |t|
    t.integer  "country_id"
    t.integer  "language_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "language_families", force: true do |t|
    t.string   "name",       limit: 50
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "language_families", ["name"], name: "index_language_families_on_name", unique: true

  create_table "languages", force: true do |t|
    t.string   "name",               limit: 100
    t.integer  "language_family_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "languages", ["name"], name: "index_languages_on_name", unique: true

  create_table "states", force: true do |t|
    t.string   "name",                limit: 150
    t.string   "postal_abbreviation", limit: 10
    t.integer  "country_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "states", ["name"], name: "index_states_on_name", unique: true
  add_index "states", ["postal_abbreviation"], name: "index_states_on_postal_abbreviation", unique: true

end
