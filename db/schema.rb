# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_23_033459) do

  create_table "authors", force: :cascade do |t|
    t.string "name"
    t.integer "user_id"
  end

  create_table "chapters", force: :cascade do |t|
    t.string "name"
    t.integer "production_id"
    t.integer "summary_id"
    t.integer "number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "payments", force: :cascade do |t|
    t.integer "user_id"
    t.decimal "total_cost", precision: 10, scale: 2
    t.datetime "paid_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "production_genres", force: :cascade do |t|
    t.integer "genre_id"
    t.integer "production_id"
  end

  create_table "production_payments", force: :cascade do |t|
    t.integer "payment_id"
    t.integer "production_id"
    t.decimal "price", precision: 10, scale: 2
    t.integer "amount"
    t.string "license"
    t.decimal "total_price", precision: 10, scale: 2
  end

  create_table "productions", force: :cascade do |t|
    t.integer "summary_id"
    t.integer "author_id"
    t.string "comic_name"
    t.string "title"
    t.string "author_name"
    t.string "description"
    t.decimal "price", precision: 10, scale: 2
    t.string "status"
    t.datetime "release_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "summaries", force: :cascade do |t|
    t.integer "favorite_count"
    t.integer "view_count"
  end

  create_table "tags", force: :cascade do |t|
    t.string "name"
    t.integer "chapter_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "user_productions", force: :cascade do |t|
    t.integer "user_id"
    t.integer "production_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "first_name"
    t.string "last_name"
    t.integer "role"
    t.boolean "activated"
    t.datetime "activated_at"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
