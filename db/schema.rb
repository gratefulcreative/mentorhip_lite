# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20131218160531) do

  create_table "courses", force: true do |t|
    t.string   "name"
    t.string   "course_type"
    t.float    "price"
    t.text     "description"
    t.integer  "user_id"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.string   "photo1"
    t.string   "photo2"
    t.string   "photo3"
    t.integer  "min_age"
    t.integer  "max_age"
    t.integer  "min_class_size"
    t.integer  "max_class_size"
    t.boolean  "required_gear"
    t.text     "required_gear_desc"
    t.text     "cancellation"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "slug"
    t.string   "photo1_file_name"
    t.string   "photo1_content_type"
    t.integer  "photo1_file_size"
    t.datetime "photo1_updated_at"
  end

  add_index "courses", ["user_id"], name: "index_courses_on_user_id"

  create_table "coursetimes", force: true do |t|
    t.datetime "start_time"
    t.datetime "end_time"
    t.datetime "start_day"
    t.datetime "end_day"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "pwd"
    t.string   "secret_question"
    t.boolean  "verified"
    t.string   "gender"
    t.datetime "birthdate"
    t.string   "phone"
    t.string   "photo"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "state"
    t.integer  "zipcode"
    t.integer  "likes"
    t.string   "weburl"
    t.string   "biography"
    t.string   "education"
    t.string   "watchlist1"
    t.string   "watchlist2"
    t.string   "watchlist3"
    t.boolean  "communication_preferences1"
    t.boolean  "communication_preferences2"
    t.boolean  "communication_preferences3"
    t.boolean  "communication_preferences4"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email",                      default: "", null: false
    t.string   "encrypted_password",         default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",              default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "profile_pic_file_name"
    t.string   "profile_pic_content_type"
    t.integer  "profile_pic_file_size"
    t.datetime "profile_pic_updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
