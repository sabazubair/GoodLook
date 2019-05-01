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

ActiveRecord::Schema.define(version: 2019_05_01_003207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "question_choices", force: :cascade do |t|
    t.bigint "question_id"
    t.string "text"
    t.bigint "style_id"
    t.binary "images"
    t.index ["question_id"], name: "index_question_choices_on_question_id"
    t.index ["style_id"], name: "index_question_choices_on_style_id"
  end

  create_table "questions", force: :cascade do |t|
    t.string "text"
    t.integer "order", default: 0, null: false
  end

  create_table "responses", force: :cascade do |t|
    t.bigint "question_id"
    t.bigint "question_choice_id"
    t.bigint "user_id"
    t.index ["question_choice_id"], name: "index_responses_on_question_choice_id"
    t.index ["question_id"], name: "index_responses_on_question_id"
    t.index ["user_id"], name: "index_responses_on_user_id"
  end

  create_table "styles", force: :cascade do |t|
    t.string "name"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
  end

  add_foreign_key "question_choices", "questions"
  add_foreign_key "question_choices", "styles"
  add_foreign_key "responses", "question_choices"
  add_foreign_key "responses", "questions"
  add_foreign_key "responses", "users"
end
