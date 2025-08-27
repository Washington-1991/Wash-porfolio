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

ActiveRecord::Schema[7.1].define(version: 2025_08_27_141755) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "client_accounts", force: :cascade do |t|
    t.string "name", null: false
    t.string "billing_email", null: false
    t.string "country_code"
    t.string "preferred_locale"
    t.string "time_zone"
    t.string "slug"
    t.bigint "owner_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_client_accounts_on_owner_id"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title", null: false
    t.string "status", default: "draft", null: false
    t.date "due_on"
    t.text "summary"
    t.bigint "client_account_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_account_id"], name: "index_projects_on_client_account_id"
    t.index ["status"], name: "index_projects_on_status"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "role", default: "client", null: false
    t.string "locale"
    t.string "time_zone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
    t.index ["role"], name: "index_users_on_role"
  end

  add_foreign_key "client_accounts", "users", column: "owner_id"
  add_foreign_key "projects", "client_accounts"
end
