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

ActiveRecord::Schema[7.0].define(version: 2022_05_04_133025) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "taks", force: :cascade do |t|
    t.string "taskid"
    t.string "title"
    t.string "description"
    t.datetime "duedate", precision: nil
    t.integer "pomodor_starteds"
    t.bigint "team_id", null: false
    t.bigint "user_id", null: false
    t.boolean "done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_taks_on_team_id"
    t.index ["user_id"], name: "index_taks_on_user_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "taskid"
    t.string "title"
    t.string "description"
    t.datetime "duedate", precision: nil
    t.integer "pomodor_starteds"
    t.bigint "team_id", null: false
    t.bigint "user_id", null: false
    t.boolean "done"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_tasks_on_team_id"
    t.index ["user_id"], name: "index_tasks_on_user_id"
  end

  create_table "team_users", force: :cascade do |t|
    t.bigint "team_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_team_users_on_team_id"
    t.index ["user_id"], name: "index_team_users_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "teamid"
    t.string "name"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "userid"
    t.string "name"
    t.string "nickname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "taks", "teams"
  add_foreign_key "taks", "users"
  add_foreign_key "tasks", "teams"
  add_foreign_key "tasks", "users"
  add_foreign_key "team_users", "teams"
  add_foreign_key "team_users", "users"
end