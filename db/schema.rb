ActiveRecord::Schema.define(version: 2022_04_01_064213) do
  enable_extension "plpgsql"

  create_table "jars", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "currency"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "color"
  end
end
