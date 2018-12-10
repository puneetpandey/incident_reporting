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

ActiveRecord::Schema.define(version: 2018_12_10_061523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "incident_details", force: :cascade do |t|
    t.bigint "incident_id"
    t.string "name"
    t.string "email"
    t.boolean "is_anonymous", default: false
    t.string "role"
    t.integer "people_involved"
    t.datetime "observed_at"
    t.string "location"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_incident_details_on_email"
    t.index ["incident_id"], name: "index_incident_details_on_incident_id"
    t.index ["name"], name: "index_incident_details_on_name"
    t.index ["observed_at"], name: "index_incident_details_on_observed_at"
  end

  create_table "incident_details_types", id: false, force: :cascade do |t|
    t.bigint "incident_detail_id", null: false
    t.bigint "incident_type_id", null: false
    t.index ["incident_detail_id", "incident_type_id"], name: "incident_incident_types"
  end

  create_table "incident_pictures", force: :cascade do |t|
    t.bigint "incident_id"
    t.string "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_id"], name: "index_incident_pictures_on_incident_id"
  end

  create_table "incident_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_incident_types_on_name"
  end

  create_table "incidents", force: :cascade do |t|
    t.bigint "school_id"
    t.text "description"
    t.boolean "active", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["active"], name: "index_incidents_on_active"
    t.index ["school_id"], name: "index_incidents_on_school_id"
  end

  create_table "people_involves", force: :cascade do |t|
    t.bigint "incident_detail_id"
    t.string "details"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["incident_detail_id"], name: "index_people_involves_on_incident_detail_id"
  end

  create_table "schools", force: :cascade do |t|
    t.string "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_schools_on_name"
  end

end
