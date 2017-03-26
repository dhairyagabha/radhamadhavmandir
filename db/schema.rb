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

ActiveRecord::Schema.define(version: 20170325050837) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "webmanager_articles", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.text     "body"
    t.integer  "author_id"
    t.string   "permalink"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "webmanager_events", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.text     "location"
    t.string   "organizer"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "webmanager_form_fields", force: :cascade do |t|
    t.integer  "form_id"
    t.string   "name"
    t.string   "label"
    t.string   "hint"
    t.string   "placeholder"
    t.string   "as"
    t.text     "collection"
    t.boolean  "disabled"
    t.boolean  "required"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["form_id"], name: "index_webmanager_form_fields_on_form_id", using: :btree
  end

  create_table "webmanager_form_responses", force: :cascade do |t|
    t.integer  "form_id"
    t.text     "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "webmanager_forms", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "success_message"
    t.string   "primary_mail"
    t.string   "send_extra_to"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "webmanager_newsletter_receivers", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.boolean  "event_notification"
  end

  create_table "webmanager_notes", force: :cascade do |t|
    t.string   "title"
    t.text     "body"
    t.integer  "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "webmanager_taggings", force: :cascade do |t|
    t.integer  "tag_id"
    t.integer  "article_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "webmanager_tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "webmanager_users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "first_name"
    t.string   "last_name"
    t.index ["confirmation_token"], name: "index_webmanager_users_on_confirmation_token", unique: true, using: :btree
    t.index ["email"], name: "index_webmanager_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_webmanager_users_on_reset_password_token", unique: true, using: :btree
    t.index ["unlock_token"], name: "index_webmanager_users_on_unlock_token", unique: true, using: :btree
  end

  add_foreign_key "webmanager_form_fields", "webmanager_forms", column: "form_id"
end
