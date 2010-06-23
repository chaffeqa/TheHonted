# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20100613192305) do

  create_table "hero_cons", :force => true do |t|
    t.integer  "strategy_guide_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hero_pros", :force => true do |t|
    t.integer  "strategy_guide_id"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "heros", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_path"
    t.string   "primary_attr"
    t.integer  "skill_1_id"
    t.integer  "skill_2_id"
    t.integer  "skill_3_id"
    t.integer  "skill_4_id"
    t.integer  "attack_range"
    t.string   "damage_range"
    t.decimal  "attacks_per_second"
    t.integer  "movement_speed"
    t.decimal  "str_base"
    t.decimal  "agi_base"
    t.decimal  "int_base"
    t.decimal  "str_gain"
    t.decimal  "agi_gain"
    t.decimal  "int_gain"
    t.decimal  "armor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_path"
    t.string   "str"
    t.string   "agi"
    t.string   "int"
    t.string   "armor"
    t.string   "max_mana"
    t.string   "max_health"
    t.string   "mana_regen"
    t.string   "damage"
    t.string   "attack_speed"
    t.string   "movement_speed"
    t.string   "magic_armor"
    t.string   "lifesteal"
    t.string   "block"
    t.string   "evasion"
    t.string   "critical_strike"
    t.string   "on_attack"
    t.text     "on_attack_effect"
    t.string   "aura_name"
    t.integer  "aura_radius"
    t.string   "aura_type"
    t.text     "aura_effects"
    t.text     "activation_description"
    t.string   "activation_target"
    t.string   "activation_range"
    t.string   "activation_mana_cost"
    t.string   "activation_cooldown"
    t.text     "activation_effects"
    t.integer  "value"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "remote_image_contents", :force => true do |t|
    t.string   "image_name"
    t.string   "image_type"
    t.integer  "image_size"
    t.string   "image_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "remote_video_contents", :force => true do |t|
    t.string   "video_name"
    t.string   "video_type"
    t.string   "video_url"
    t.string   "video_alt_url"
    t.string   "video_embedded"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skill_builds", :force => true do |t|
    t.string   "skill_1"
    t.string   "skill_2"
    t.string   "skill_3"
    t.string   "skill_4"
    t.string   "skill_5"
    t.string   "skill_6"
    t.string   "skill_7"
    t.string   "skill_8"
    t.string   "skill_9"
    t.string   "skill_10"
    t.string   "skill_11"
    t.string   "skill_12"
    t.string   "skill_13"
    t.string   "skill_14"
    t.string   "skill_15"
    t.string   "skill_16"
    t.string   "skill_17"
    t.string   "skill_18"
    t.string   "skill_19"
    t.string   "skill_20"
    t.string   "skill_21"
    t.string   "skill_22"
    t.string   "skill_23"
    t.string   "skill_24"
    t.string   "skill_25"
    t.text     "reasoning"
    t.integer  "strategy_guide_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "skills", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.string   "image_path"
    t.string   "action"
    t.string   "target"
    t.string   "damage_type"
    t.string   "range"
    t.string   "radius"
    t.string   "cast_time"
    t.string   "mana_cost"
    t.string   "cooldown"
    t.text     "activation"
    t.text     "on_attack"
    t.text     "effects"
    t.string   "staff_effect"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "strategy_guides", :force => true do |t|
    t.integer  "hero_id"
    t.integer  "user_id"
    t.text     "about_this_guide"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "strategy_items", :force => true do |t|
    t.integer  "strategy_guide_id"
    t.integer  "phase"
    t.integer  "order"
    t.integer  "content_id"
    t.string   "content_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "text_contents", :force => true do |t|
    t.text     "text_content"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "login",                            :null => false
    t.string   "crypted_password",                 :null => false
    t.string   "password_salt",                    :null => false
    t.string   "persistence_token",                :null => false
    t.integer  "login_count",       :default => 0, :null => false
    t.datetime "last_request_at"
    t.datetime "last_login_at"
    t.datetime "current_login_at"
    t.string   "last_login_ip"
    t.string   "current_login_ip"
  end

  add_index "users", ["last_request_at"], :name => "index_users_on_last_request_at"
  add_index "users", ["login"], :name => "index_users_on_login"
  add_index "users", ["persistence_token"], :name => "index_users_on_persistence_token"

end
