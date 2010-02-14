# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100213215417) do

  create_table "api_users", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.integer  "level"
    t.boolean  "active"
    t.text     "api_key"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "crypted_password"
    t.string   "password_salt"
    t.string   "persistence_token"
  end

  create_table "courses", :force => true do |t|
    t.integer  "instructor_id"
    t.string   "term"
    t.string   "name"
    t.string   "number"
    t.string   "time"
    t.string   "campus"
    t.string   "room"
    t.text     "homepage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "courses_students", :id => false, :force => true do |t|
    t.integer "course_id"
    t.integer "student_id"
  end

  create_table "instructors", :force => true do |t|
    t.string   "name"
    t.string   "office"
    t.string   "phone"
    t.string   "email"
    t.text     "office_hours"
    t.text     "advising_hours"
    t.text     "homepage"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "students", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_col_password"
    t.string   "col_username"
  end

end
