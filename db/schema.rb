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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130503212218) do

  create_table "delayed_jobs", :force => true do |t|
    t.integer  "priority",   :default => 0
    t.integer  "attempts",   :default => 0
    t.text     "handler"
    t.text     "last_error"
    t.datetime "run_at"
    t.datetime "locked_at"
    t.datetime "failed_at"
    t.string   "locked_by"
    t.string   "queue"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

  add_index "delayed_jobs", ["priority", "run_at"], :name => "delayed_jobs_priority"

  create_table "licenses", :force => true do |t|
    t.string   "kind"
    t.integer  "amount_paid"
    t.string   "county"
    t.string   "municipality"
    t.integer  "pet_id"
    t.boolean  "expired"
    t.boolean  "printed"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "pets", :force => true do |t|
    t.string   "name"
    t.string   "breed"
    t.date     "rabies_expiration"
    t.string   "color"
    t.date     "born_on"
    t.boolean  "recent"
    t.string   "sex"
    t.string   "markings"
    t.string   "rabies_tag_number"
    t.integer  "user_id"
    t.string   "species"
    t.datetime "created_at",                              :null => false
    t.datetime "updated_at",                              :null => false
    t.string   "rabies_attachment_file_name"
    t.string   "rabies_attachment_content_type"
    t.integer  "rabies_attachment_file_size"
    t.datetime "rabies_attachment_updated_at"
    t.string   "spayed_neutered_attachment_file_name"
    t.string   "spayed_neutered_attachment_content_type"
    t.integer  "spayed_neutered_attachment_file_size"
    t.datetime "spayed_neutered_attachment_updated_at"
    t.string   "microchip_code"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
    t.string   "liscense_id"
  end

  add_index "pets", ["liscense_id"], :name => "index_pets_on_liscense_id"
  add_index "pets", ["microchip_code"], :name => "index_pets_on_microchip_code"
  add_index "pets", ["user_id"], :name => "index_pets_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "",    :null => false
    t.string   "encrypted_password",     :default => "",    :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "full_name",              :default => "",    :null => false
    t.string   "address_one",            :default => "",    :null => false
    t.string   "address_two",            :default => ""
    t.integer  "zip",                                       :null => false
    t.string   "phone",                  :default => ""
    t.string   "state",                  :default => "",    :null => false
    t.string   "city",                   :default => "",    :null => false
    t.string   "county",                 :default => "",    :null => false
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
    t.boolean  "admin",                  :default => false
    t.boolean  "senior",                 :default => false
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
