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

ActiveRecord::Schema.define(version: 2022_05_23_180533) do

  create_table "characters", force: :cascade do |t|
    t.text "nick"
    t.json "statystyki", default: []
    t.json "klan", default: []
    t.json "profesja", default: []
    t.json "umiejetnosci", default: []
    t.json "przedmioty", default: []
    t.json "p_fab", default: []
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "user_id"
    t.text "staty"
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "klans", force: :cascade do |t|
    t.text "nazwa"
    t.string "jarl"
    t.string "nastepca"
    t.string "stolica"
    t.string "polozenie"
    t.text "opis"
    t.string "show"
    t.string "index"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.json "statystyki", default: []
  end

  create_table "norgmars", force: :cascade do |t|
    t.text "nazwa"
    t.integer "pid"
    t.integer "nid"
    t.text "opis"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "aid"
  end

  create_table "postacs", force: :cascade do |t|
    t.text "imie"
    t.json "statystyki", default: []
    t.json "klan", default: []
    t.json "profesja", default: []
    t.json "umiejetnosci", default: []
    t.json "przedmioty", default: []
    t.json "p_fab", default: []
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
