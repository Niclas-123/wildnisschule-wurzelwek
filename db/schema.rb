# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_06_02_152040) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.integer "latitude"
    t.integer "longitute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seminar_instances", force: :cascade do |t|
    t.bigint "seminar_type_id"
    t.string "name"
    t.text "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seminar_type_id"], name: "index_seminar_instances_on_seminar_type_id"
  end

  create_table "seminar_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seminars", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "seminar_instance_id"
    t.datetime "begins"
    t.datetime "ends"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["location_id"], name: "index_seminars_on_location_id"
    t.index ["seminar_instance_id"], name: "index_seminars_on_seminar_instance_id"
  end

end
