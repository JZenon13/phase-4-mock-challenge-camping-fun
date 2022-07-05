ActiveRecord::Schema.define(version: 2022_07_05_132830) do

  create_table "activities", force: :cascade do |t|
    t.string "name"
    t.integer "difficulty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "campers", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "signups", force: :cascade do |t|
    t.integer "camper_id"
    t.integer "activity_id"
    t.integer "time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
