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

ActiveRecord::Schema.define(version: 20150208193630) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: :cascade do |t|
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
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

  create_table "committees", force: :cascade do |t|
    t.string   "name"
    t.string   "logo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "votes"
  end

  create_table "constituencies", force: :cascade do |t|
    t.string   "name"
    t.integer  "number_of_voters"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "card_number"
    t.integer  "votes"
  end

  create_table "election_committees", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statics", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "useeers", force: :cascade do |t|
    t.string   "login"
    t.string   "name"
    t.string   "surname"
    t.string   "role"
    t.string   "crypted_password"
    t.boolean  "admin"
    t.string   "persistence_token"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "constituency"
  end

  create_table "useers", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "role"
    t.string   "login"
    t.string   "crypted_password"
    t.boolean  "admin"
    t.string   "persistence_token"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "surname"
    t.string   "role"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vootes", force: :cascade do |t|
    t.integer  "number"
    t.integer  "id_const"
    t.integer  "id_com"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "constituency_id"
    t.integer  "committee_id"
  end

  add_index "vootes", ["committee_id"], name: "index_vootes_on_committee_id"
  add_index "vootes", ["constituency_id"], name: "index_vootes_on_constituency_id"

  create_table "votes", force: :cascade do |t|
    t.integer  "number"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.integer  "constituency_id"
    t.integer  "election_committee_id"
  end

  add_index "votes", ["constituency_id"], name: "index_votes_on_constituency_id"
  add_index "votes", ["election_committee_id"], name: "index_votes_on_election_committee_id"

end
