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

ActiveRecord::Schema[7.0].define(version: 2022_06_07_111912) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.bigint "seminar_id"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "tel"
    t.string "birth_year"
    t.string "adress"
    t.string "zip_code"
    t.string "city"
    t.boolean "rideshare", default: false
    t.boolean "agb", default: false
    t.boolean "payed", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seminar_id"], name: "index_bookings_on_seminar_id"
  end

  create_table "equipment_lists", force: :cascade do |t|
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type_and_scope", unique: true
    t.index ["slug", "sluggable_type"], name: "index_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_type", "sluggable_id"], name: "index_friendly_id_slugs_on_sluggable_type_and_sluggable_id"
  end

  create_table "guestbook_entries", force: :cascade do |t|
    t.bigint "seminar_instance_id"
    t.bigint "user_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seminar_instance_id"], name: "index_guestbook_entries_on_seminar_instance_id"
    t.index ["user_id"], name: "index_guestbook_entries_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "latitude"
    t.integer "longitute"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seminar_instances", force: :cascade do |t|
    t.bigint "seminar_type_id"
    t.bigint "equipment_list_id"
    t.string "name"
    t.text "description"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["equipment_list_id"], name: "index_seminar_instances_on_equipment_list_id"
    t.index ["seminar_type_id"], name: "index_seminar_instances_on_seminar_type_id"
    t.index ["slug"], name: "index_seminar_instances_on_slug", unique: true
  end

  create_table "seminar_types", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["slug"], name: "index_seminar_types_on_slug", unique: true
  end

  create_table "seminars", force: :cascade do |t|
    t.bigint "location_id"
    t.bigint "seminar_instance_id"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "slug"
    t.index ["location_id"], name: "index_seminars_on_location_id"
    t.index ["seminar_instance_id"], name: "index_seminars_on_seminar_instance_id"
    t.index ["slug"], name: "index_seminars_on_slug", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "crypted_password"
    t.string "salt"
    t.string "first_name"
    t.string "last_name"
    t.string "tel"
    t.string "birth_year"
    t.string "adress"
    t.string "zip_code"
    t.string "city"
    t.boolean "admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
  end

end
