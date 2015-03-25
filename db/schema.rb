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

ActiveRecord::Schema.define(version: 20150325174155) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: true do |t|
    t.integer  "question_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "answers", ["question_id"], name: "index_answers_on_question_id", using: :btree

  create_table "categories", force: true do |t|
    t.string   "name"
    t.integer  "poll_interval_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "categories", ["poll_interval_id"], name: "index_categories_on_poll_interval_id", using: :btree

  create_table "organizations", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "poll_intervals", force: true do |t|
    t.integer  "poll_id"
    t.datetime "start"
    t.datetime "end"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "odh"
  end

  add_index "poll_intervals", ["poll_id"], name: "index_poll_intervals_on_poll_id", using: :btree

  create_table "polls", force: true do |t|
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.boolean  "expired"
    t.datetime "expiration_date"
  end

  add_index "polls", ["organization_id"], name: "index_polls_on_organization_id", using: :btree

  create_table "questions", force: true do |t|
    t.boolean  "odh"
    t.string   "question"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "poll_intervals_id"
  end

  add_index "questions", ["poll_intervals_id"], name: "index_questions_on_poll_intervals_id", using: :btree

  create_table "respondents", force: true do |t|
    t.integer  "guardian_age"
    t.integer  "resident_age"
    t.boolean  "is_guardian"
    t.boolean  "gender"
    t.integer  "race"
    t.integer  "relationship"
    t.integer  "visit_frequency"
    t.integer  "expected_stay"
    t.boolean  "finished"
    t.integer  "email"
    t.string   "key"
    t.integer  "poll_intervals_id"
    t.integer  "organization_id"
    t.integer  "poll_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "respondents", ["organization_id"], name: "index_respondents_on_organization_id", using: :btree
  add_index "respondents", ["poll_id"], name: "index_respondents_on_poll_id", using: :btree
  add_index "respondents", ["poll_intervals_id"], name: "index_respondents_on_poll_intervals_id", using: :btree

  create_table "respondents_answers", id: false, force: true do |t|
    t.integer "respondents_id"
    t.integer "answers_id"
  end

  add_index "respondents_answers", ["answers_id"], name: "index_respondents_answers_on_answers_id", using: :btree
  add_index "respondents_answers", ["respondents_id"], name: "index_respondents_answers_on_respondents_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: ""
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.integer  "level",                  default: 0,  null: false
    t.string   "first_name",                          null: false
    t.string   "last_name",                           null: false
    t.integer  "organization_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "invitation_token"
    t.datetime "invitation_created_at"
    t.datetime "invitation_sent_at"
    t.datetime "invitation_accepted_at"
    t.integer  "invitation_limit"
    t.integer  "invited_by_id"
    t.string   "invited_by_type"
    t.integer  "invitations_count",      default: 0
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["invitation_token"], name: "index_users_on_invitation_token", unique: true, using: :btree
  add_index "users", ["invitations_count"], name: "index_users_on_invitations_count", using: :btree
  add_index "users", ["invited_by_id"], name: "index_users_on_invited_by_id", using: :btree
  add_index "users", ["organization_id"], name: "index_users_on_organization_id", using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
