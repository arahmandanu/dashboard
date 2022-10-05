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

ActiveRecord::Schema[7.0].define(version: 2022_09_28_151826) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "seed_migration_data_migrations", id: :serial, force: :cascade do |t|
    t.string "version"
    t.integer "runtime"
    t.datetime "migrated_on", precision: nil
  end

  create_table "users_dashboard_roles", force: :cascade do |t|
    t.integer "users_dashboard_id"
    t.boolean "can_manage_user_dashboard", default: false, null: false
    t.boolean "can_manage_user_dashboard_role", default: false, null: false
    t.boolean "can_show", default: false, null: false
    t.boolean "can_edit", default: false, null: false
    t.boolean "can_delete", default: false, null: false
    t.boolean "can_create", default: false, null: false
    t.boolean "can_sync", default: false, null: false
    t.boolean "can_export", default: false, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["users_dashboard_id"], name: "index_users_dashboard_roles_on_users_dashboard_id", unique: true
  end

  create_table "users_dashboards", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "nik", default: ""
    t.text "address", default: ""
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_dashboards_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_dashboards_on_reset_password_token", unique: true
  end

  add_foreign_key "users_dashboard_roles", "users_dashboards"
end
