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

ActiveRecord::Schema[7.1].define(version: 2024_04_02_161937) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.bigint "prayer_id", null: false
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prayer_id"], name: "index_answers_on_prayer_id"
  end

  create_table "notes", force: :cascade do |t|
    t.bigint "prayer_id", null: false
    t.string "title"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["prayer_id"], name: "index_notes_on_prayer_id"
  end

  create_table "prayers", force: :cascade do |t|
    t.string "description"
    t.bigint "status_id", null: false
    t.bigint "type_id", null: false
    t.bigint "user_id", null: false
    t.bigint "tag_id", null: false
    t.date "datetime_to_pray", default: -> { "CURRENT_DATE" }
    t.string "location", default: "home"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "summary"
    t.integer "notes_count", default: 0
    t.integer "answers_count", default: 0
    t.index ["status_id"], name: "index_prayers_on_status_id"
    t.index ["tag_id"], name: "index_prayers_on_tag_id"
    t.index ["type_id"], name: "index_prayers_on_type_id"
    t.index ["user_id"], name: "index_prayers_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "label"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.bigint "tag_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_topics_on_tag_id"
  end

  create_table "types", force: :cascade do |t|
    t.string "label"
    t.string "subject"
    t.string "description"
    t.bigint "topic_id", null: false
    t.bigint "tag_id", null: false
    t.integer "prayer_duration", default: 1
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tag_id"], name: "index_types_on_tag_id"
    t.index ["topic_id"], name: "index_types_on_topic_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "username"
    t.bigint "role_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "answers", "prayers"
  add_foreign_key "notes", "prayers"
  add_foreign_key "prayers", "statuses"
  add_foreign_key "prayers", "tags"
  add_foreign_key "prayers", "types"
  add_foreign_key "prayers", "users"
  add_foreign_key "topics", "tags"
  add_foreign_key "types", "tags"
  add_foreign_key "types", "topics"
  add_foreign_key "users", "roles"
end
