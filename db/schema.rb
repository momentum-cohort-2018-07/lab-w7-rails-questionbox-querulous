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

ActiveRecord::Schema.define(version: 2018_09_11_030659) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.text "body"
    t.bigint "whiner_id"
    t.bigint "whine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["whine_id"], name: "index_answers_on_whine_id"
    t.index ["whiner_id"], name: "index_answers_on_whiner_id"
  end

  create_table "clarifiers", force: :cascade do |t|
    t.text "body"
    t.bigint "whiner_id"
    t.bigint "whine_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["whine_id"], name: "index_clarifiers_on_whine_id"
    t.index ["whiner_id"], name: "index_clarifiers_on_whiner_id"
  end

  create_table "petulants", force: :cascade do |t|
    t.text "body"
    t.bigint "whiner_id"
    t.bigint "answer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["answer_id"], name: "index_petulants_on_answer_id"
    t.index ["whiner_id"], name: "index_petulants_on_whiner_id"
  end

  create_table "whiners", force: :cascade do |t|
    t.string "name", limit: 32
    t.string "username", limit: 32
    t.string "email"
    t.string "password_digest"
    t.string "auth_token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["auth_token"], name: "index_whiners_on_auth_token", unique: true
    t.index ["email"], name: "index_whiners_on_email", unique: true
    t.index ["username"], name: "index_whiners_on_username", unique: true
  end

  create_table "whines", force: :cascade do |t|
    t.string "title", limit: 80
    t.text "body"
    t.bigint "whiner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["whiner_id"], name: "index_whines_on_whiner_id"
  end

  add_foreign_key "answers", "whiners"
  add_foreign_key "answers", "whines"
  add_foreign_key "clarifiers", "whiners"
  add_foreign_key "clarifiers", "whines"
  add_foreign_key "petulants", "answers"
  add_foreign_key "petulants", "whiners"
  add_foreign_key "whines", "whiners"
end
