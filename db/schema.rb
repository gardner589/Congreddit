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

ActiveRecord::Schema.define(version: 20160718212834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string   "author"
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "legislators", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "party"
    t.integer  "year_elected"
    t.string   "bio_id"
    t.string   "chamber"
    t.integer  "number"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "votes", force: :cascade do |t|
    t.string   "vote_type"
    t.string   "chamber"
    t.string   "congress"
    t.date     "voted_at"
    t.string   "bill_id"
    t.string   "roll_id"
    t.integer  "year"
    t.string   "result"
    t.json     "voter_ids"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
