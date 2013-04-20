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

ActiveRecord::Schema.define(:version => 20130419014534) do

  create_table "owners", :force => true do |t|
    t.string   "full_name"
    t.string   "email",                  :default => "", :null => false
    t.string   "address_one"
    t.string   "address_two"
    t.string   "zip"
    t.string   "city"
    t.string   "phone_number"
    t.string   "state"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "owners", ["email"], :name => "index_owners_on_email", :unique => true
  add_index "owners", ["reset_password_token"], :name => "index_owners_on_reset_password_token", :unique => true

  create_table "pets", :force => true do |t|
    t.string   "name"
    t.string   "breed"
    t.string   "rabies_expiration"
    t.string   "color"
    t.integer  "age"
    t.string   "sex"
    t.string   "markings"
    t.string   "rabies_tag_number"
    t.integer  "owner_id"
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
  end

  add_index "pets", ["microchip_code"], :name => "index_pets_on_microchip_code"
  add_index "pets", ["owner_id"], :name => "index_pets_on_owner_id"

end
