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

ActiveRecord::Schema[7.0].define(version: 2022_07_14_093610) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.string "service_name", null: false
    t.bigint "byte_size", null: false
    t.string "checksum"
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "active_storage_variant_records", force: :cascade do |t|
    t.bigint "blob_id", null: false
    t.string "variation_digest", null: false
    t.index ["blob_id", "variation_digest"], name: "index_active_storage_variant_records_uniqueness", unique: true
  end

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
    t.boolean "privacy", default: false
    t.integer "user_id"
    t.integer "status", default: 0
    t.string "token"
    t.string "charge_id"
    t.string "error_message"
    t.string "customer_id"
    t.integer "payment_gateway"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.index ["seminar_id"], name: "index_bookings_on_seminar_id"
  end

  create_table "equipment_items", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "equipment_lists", force: :cascade do |t|
    t.bigint "equipment_item_id"
    t.bigint "seminar_instance_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["equipment_item_id"], name: "index_equipment_lists_on_equipment_item_id"
    t.index ["seminar_instance_id"], name: "index_equipment_lists_on_seminar_instance_id"
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

  create_table "galleries", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gallery_images", force: :cascade do |t|
    t.bigint "gallery_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gallery_id"], name: "index_gallery_images_on_gallery_id"
  end

  create_table "guestbook_entries", force: :cascade do |t|
    t.bigint "seminar_instance_id"
    t.bigint "user_id"
    t.string "author"
    t.text "title"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seminar_instance_id"], name: "index_guestbook_entries_on_seminar_instance_id"
    t.index ["user_id"], name: "index_guestbook_entries_on_user_id"
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.float "latitude"
    t.float "longitude"
    t.string "street"
    t.string "house_number"
    t.string "zip"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "content_1"
    t.text "content_2"
    t.text "content_3"
    t.text "content_4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "seminar_contents", force: :cascade do |t|
    t.bigint "seminar_instance_id"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["seminar_instance_id"], name: "index_seminar_contents_on_seminar_instance_id"
  end

  create_table "seminar_instances", force: :cascade do |t|
    t.bigint "seminar_type_id"
    t.string "name"
    t.text "description"
    t.string "stripe_plan_name"
    t.string "paypal_plan_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "EUR", null: false
    t.string "slug"
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
    t.integer "max_participants"
    t.boolean "archived", default: false
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

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "active_storage_variant_records", "active_storage_blobs", column: "blob_id"
end
