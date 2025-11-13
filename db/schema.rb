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

ActiveRecord::Schema[7.2].define(version: 2025_11_13_033316) do
  create_table "doctors", force: :cascade do |t|
    t.string "full_name", null: false
    t.string "medical_code", null: false
    t.string "email", null: false
    t.string "phone_number"
    t.string "identity_card", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_doctors_on_email", unique: true
    t.index ["identity_card"], name: "index_doctors_on_identity_card", unique: true
    t.index ["medical_code"], name: "index_doctors_on_medical_code", unique: true
  end
end
