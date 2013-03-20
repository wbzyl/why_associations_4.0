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

ActiveRecord::Schema.define(version: 14) do

  create_table "articles", force: true do |t|
    t.string   "title"
    t.string   "isbn"
    t.string   "pub_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "articles_authors", id: false, force: true do |t|
    t.integer "article_id"
    t.integer "author_id"
  end

  add_index "articles_authors", ["article_id"], name: "index_articles_authors_on_article_id"
  add_index "articles_authors", ["author_id"], name: "index_articles_authors_on_author_id"

  create_table "assignments", force: true do |t|
    t.integer  "programmer_id"
    t.integer  "project_id"
    t.string   "task"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "assignments", ["programmer_id"], name: "index_assignments_on_programmer_id"
  add_index "assignments", ["project_id"], name: "index_assignments_on_project_id"

  create_table "authors", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "companies", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "customers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "galleries", force: true do |t|
    t.integer  "photographer_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "galleries", ["photographer_id"], name: "index_galleries_on_photographer_id"

  create_table "orders", force: true do |t|
    t.datetime "order_date"
    t.string   "order_number"
    t.integer  "customer_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "orders", ["customer_id"], name: "index_orders_on_customer_id"

  create_table "people", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "phone_numbers", force: true do |t|
    t.string   "number"
    t.integer  "callable_id"
    t.string   "callable_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photographers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "photos", force: true do |t|
    t.integer  "gallery_id"
    t.string   "name"
    t.string   "file_path"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["gallery_id"], name: "index_photos_on_gallery_id"

  create_table "programmers", force: true do |t|
    t.string   "login"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
