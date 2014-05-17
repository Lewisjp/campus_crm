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

ActiveRecord::Schema.define(version: 20140517012500) do

  create_table "course_sections", force: true do |t|
    t.integer  "course_id"
    t.integer  "section_id"
    t.string   "title"
    t.text     "lecture_notes"
    t.string   "lecture_url"
    t.string   "video"
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.string   "image"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "course_teachers", force: true do |t|
    t.integer  "course_id"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses", force: true do |t|
    t.string   "title"
    t.string   "description"
    t.string   "video"
    t.string   "video_file_name"
    t.string   "video_content_type"
    t.integer  "video_file_size"
    t.string   "image"
    t.text     "syllabus"
    t.string   "language"
    t.integer  "hours"
    t.text     "prerequisites"
    t.date     "start_date"
    t.date     "end_date"
    t.integer  "teacher_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_assessments", force: true do |t|
    t.integer  "section_id"
    t.integer  "assessment_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_choices", force: true do |t|
    t.integer  "section_question_id"
    t.text     "content"
    t.boolean  "correct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "section_questions", force: true do |t|
    t.integer  "section_id"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_answer_section_questions", force: true do |t|
    t.integer  "user_id"
    t.integer  "section_question_id"
    t.integer  "section_choice_id"
    t.boolean  "correct"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "student_enrollment_records", force: true do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.date     "date_enrolled"
    t.boolean  "completed"
    t.date     "date_completed"
    t.integer  "completion_status"
    t.integer  "grade"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.boolean  "teacher"
    t.boolean  "site_admin"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "image_url"
    t.text     "about_me"
    t.string   "phone"
    t.string   "institution"
    t.string   "picture"
    t.string   "education"
    t.string   "gender"
    t.string   "location"
    t.date     "birthday"
    t.datetime "created_at"
    t.datetime "updated_at"
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
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end
