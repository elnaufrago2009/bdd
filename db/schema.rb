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

ActiveRecord::Schema.define(version: 20140702192810) do

  create_table "abouts", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "image_about"
    t.string   "content_title"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "admins", force: true do |t|
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

  add_index "admins", ["email"], name: "index_admins_on_email", unique: true
  add_index "admins", ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true

  create_table "contacts", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "code"
    t.string   "content_title"
    t.text     "content_content"
    t.string   "data_title"
    t.string   "data_subtitle"
    t.string   "data_direction"
    t.string   "data_phone"
    t.string   "data_email"
    t.string   "data_time"
    t.string   "data_facebook"
    t.string   "data_linkedln"
    t.string   "data_twitter"
    t.string   "data_googlemas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "image_customer"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "faqs", force: true do |t|
    t.string   "title"
    t.text     "content"
    t.string   "image_faq"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "messages", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "page_options", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "footer_left"
    t.string   "footer_right"
    t.string   "image_option_logo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "portafolios", force: true do |t|
    t.string   "title"
    t.string   "subtitle"
    t.string   "content_resumen"
    t.text     "content"
    t.string   "image_portafolio_big"
    t.string   "image_portafolio_medium"
    t.string   "image_portafolio_small"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "posts", force: true do |t|
    t.string   "title"
    t.string   "image_post_big"
    t.string   "image_post_medium"
    t.string   "content_abstract"
    t.text     "content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", force: true do |t|
    t.string   "image_team"
    t.string   "nombre"
    t.string   "funcion"
    t.text     "resumen"
    t.string   "facebook"
    t.string   "linkening"
    t.string   "twitter"
    t.string   "googlemas"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
