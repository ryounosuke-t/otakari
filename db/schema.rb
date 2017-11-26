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

ActiveRecord::Schema.define(version: 20171126151539) do

  create_table "cart_items", force: :cascade do |t|
    t.integer  "item_id",    limit: 4
    t.integer  "quantity",   limit: 4
    t.integer  "cart_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "carts", force: :cascade do |t|
    t.integer  "item_id",    limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "comments", force: :cascade do |t|
    t.text     "content",    limit: 65535
    t.integer  "product_id", limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "item_id",    limit: 4
    t.integer  "user_id",    limit: 4
  end

  create_table "items", force: :cascade do |t|
    t.text     "title",         limit: 65535
    t.text     "description",   limit: 65535
    t.text     "category",      limit: 65535
    t.integer  "price",         limit: 4
    t.text     "export_option", limit: 65535
    t.text     "image",         limit: 65535
    t.text     "tag",           limit: 65535
    t.integer  "stock",         limit: 4
    t.integer  "nice_point",    limit: 4
    t.integer  "user_id",       limit: 4
    t.integer  "request_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "purchase_histories", force: :cascade do |t|
    t.integer  "item_id",    limit: 4
    t.integer  "user_id",    limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", force: :cascade do |t|
    t.text     "title",       limit: 65535
    t.integer  "star",        limit: 4
    t.text     "description", limit: 65535
    t.integer  "user_id",     limit: 4
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255,   default: "", null: false
    t.string   "encrypted_password",     limit: 255,   default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,     default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.text     "address",                limit: 65535
    t.text     "nickname",               limit: 65535
    t.integer  "review_id",              limit: 4
    t.text     "phone_number",           limit: 65535
    t.string   "avatar_file_name",       limit: 255
    t.string   "avatar_content_type",    limit: 255
    t.integer  "avatar_file_size",       limit: 4
    t.datetime "avatar_updated_at"
    t.text     "profile",                limit: 65535
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
