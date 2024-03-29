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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111027223942) do

  create_table "ckeditor_assets", :force => true do |t|
    t.string   "data_file_name",                  :null => false
    t.string   "data_content_type"
    t.integer  "data_file_size"
    t.integer  "assetable_id"
    t.string   "assetable_type",    :limit => 30
    t.string   "type",              :limit => 30
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ckeditor_assets", ["assetable_type", "assetable_id"], :name => "idx_ckeditor_assetable"
  add_index "ckeditor_assets", ["assetable_type", "type", "assetable_id"], :name => "idx_ckeditor_assetable_type"

  create_table "komments", :force => true do |t|
    t.text     "body"
    t.integer  "parent_id"
    t.integer  "user_id"
    t.integer  "kommented_id"
    t.string   "kommented_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pages", :force => true do |t|
    t.string   "name"
    t.text     "body"
    t.integer  "position"
    t.integer  "parent_id"
    t.integer  "user_id"
    t.boolean  "user_access"
    t.boolean  "admin_access"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "alias"
  end

  create_table "roles_users", :id => false, :force => true do |t|
    t.integer "role_id", :null => false
    t.integer "user_id", :null => false
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username",        :limit => 64,                     :null => false
    t.string   "email",           :limit => 128,                    :null => false
    t.string   "phone",           :limit => 50
    t.boolean  "sex"
    t.text     "address"
    t.string   "hashed_password", :limit => 64
    t.boolean  "enabled",                        :default => true,  :null => false
    t.text     "profile"
    t.datetime "last_login_at"
    t.string   "salt_key"
    t.boolean  "salted",                         :default => false
  end

  add_index "users", ["username"], :name => "index_users_on_username"

end
