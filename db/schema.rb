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

ActiveRecord::Schema.define(version: 2019_02_09_162345) do

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_subjects", force: :cascade do |t|
    t.integer "subject_id"
    t.integer "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "subject_id_id"
    t.integer "category_id_id"
    t.index ["category_id_id"], name: "index_category_subjects_on_category_id_id"
    t.index ["subject_id_id"], name: "index_category_subjects_on_subject_id_id"
  end

  create_table "countries", force: :cascade do |t|
    t.string "country"
    t.string "city"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id_id"
    t.index ["user_id_id"], name: "index_countries_on_user_id_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.string "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "student_id_id"
    t.integer "service_id_id"
    t.index ["service_id_id"], name: "index_orders_on_service_id_id"
    t.index ["student_id_id"], name: "index_orders_on_student_id_id"
  end

  create_table "service_tags", force: :cascade do |t|
    t.integer "service_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "tag_id_id"
    t.integer "service_id_id"
    t.index ["service_id_id"], name: "index_service_tags_on_service_id_id"
    t.index ["tag_id_id"], name: "index_service_tags_on_tag_id_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "name"
    t.integer "price"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "teacher_id_id"
    t.integer "subject_id_id"
    t.index ["subject_id_id"], name: "index_services_on_subject_id_id"
    t.index ["teacher_id_id"], name: "index_services_on_teacher_id_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id_id"
    t.index ["user_id_id"], name: "index_students_on_user_id_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "rating"
    t.string "awards"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id_id"
    t.index ["user_id_id"], name: "index_teachers_on_user_id_id"
  end

  create_table "user_roles", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "description"
    t.integer "user_id"
    t.index ["user_id"], name: "index_user_roles_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "lastname"
    t.string "login"
    t.string "password"
    t.string "mail"
    t.string "age"
    t.string "rating"
    t.string "awards"
    t.string "phone"
    t.string "description"
    t.string "admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_role_id"
    t.index ["user_role_id"], name: "index_users_on_user_role_id"
  end

end
