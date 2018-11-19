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

ActiveRecord::Schema.define(version: 2018_11_19_113503) do

  create_table "artists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "city"
    t.string "state"
    t.string "phone_no"
    t.string "linkedlin_url"
    t.string "facebook_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "attendances", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "member_id"
    t.bigint "concert_id"
    t.integer "head_count"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_attendances_on_concert_id"
    t.index ["member_id"], name: "index_attendances_on_member_id"
  end

  create_table "concerts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "concert_name"
    t.date "concert_date"
    t.bigint "location_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "artist_id"
    t.index ["artist_id"], name: "index_concerts_on_artist_id"
    t.index ["location_id"], name: "index_concerts_on_location_id"
  end

  create_table "concerts_subscriptions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "concert_id"
    t.bigint "subscription_id"
    t.index ["concert_id"], name: "index_concerts_subscriptions_on_concert_id"
    t.index ["subscription_id"], name: "index_concerts_subscriptions_on_subscription_id"
  end

  create_table "follow_ups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "volunteer_id"
    t.bigint "member_id"
    t.bigint "concert_id"
    t.string "response"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["concert_id"], name: "index_follow_ups_on_concert_id"
    t.index ["member_id"], name: "index_follow_ups_on_member_id"
    t.index ["volunteer_id"], name: "index_follow_ups_on_volunteer_id"
  end

  create_table "locations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "city"
    t.string "pin_code"
  end

  create_table "members", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "phone_no"
    t.text "address"
    t.string "city"
    t.string "state"
    t.date "dob"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.bigint "volunteer_id"
    t.bigint "concert_id"
    t.index ["concert_id"], name: "index_members_on_concert_id"
    t.index ["volunteer_id"], name: "index_members_on_volunteer_id"
  end

  create_table "products", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "remunerations", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "concert_id"
    t.bigint "artist_id"
    t.integer "amount"
    t.string "mode_of_payment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["artist_id"], name: "index_remunerations_on_artist_id"
    t.index ["concert_id"], name: "index_remunerations_on_concert_id"
  end

  create_table "specialities", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "artist_id"
    t.index ["artist_id"], name: "index_specialities_on_artist_id"
  end

  create_table "subscriptions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "member_id"
    t.bigint "product_id"
    t.date "subscribed_at"
    t.integer "duration"
    t.string "keyword"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "status"
    t.index ["member_id"], name: "index_subscriptions_on_member_id"
    t.index ["product_id"], name: "index_subscriptions_on_product_id"
  end

  create_table "volunteers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name"
    t.string "phone_no"
    t.string "email"
    t.date "dob"
    t.date "associated_since"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "volunteer_type"
  end

  add_foreign_key "attendances", "concerts"
  add_foreign_key "attendances", "members"
  add_foreign_key "concerts", "artists"
  add_foreign_key "concerts", "locations"
  add_foreign_key "concerts_subscriptions", "concerts"
  add_foreign_key "concerts_subscriptions", "subscriptions"
  add_foreign_key "follow_ups", "concerts"
  add_foreign_key "follow_ups", "members"
  add_foreign_key "follow_ups", "volunteers"
  add_foreign_key "members", "concerts"
  add_foreign_key "members", "volunteers"
  add_foreign_key "remunerations", "artists"
  add_foreign_key "remunerations", "concerts"
  add_foreign_key "specialities", "artists"
  add_foreign_key "subscriptions", "members"
  add_foreign_key "subscriptions", "products"
end
