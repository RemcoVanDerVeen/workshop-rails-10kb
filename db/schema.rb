# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_05_06_132123) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "guilds", force: :cascade do |t|
    t.string "name"
    t.string "motto"
    t.date "founded_on"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hero_skills", force: :cascade do |t|
    t.bigint "hero_id", null: false
    t.bigint "skill_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_id"], name: "index_hero_skills_on_hero_id"
    t.index ["skill_id"], name: "index_hero_skills_on_skill_id"
  end

  create_table "heros", force: :cascade do |t|
    t.string "name"
    t.integer "level"
    t.string "player_class"
    t.string "race"
    t.integer "experience_points"
    t.bigint "guild_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["guild_id"], name: "index_heros_on_guild_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "item_type"
    t.string "rarity"
    t.integer "value"
    t.boolean "equipped"
    t.bigint "hero_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_id"], name: "index_items_on_hero_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.string "monster_type"
    t.integer "hit_points"
    t.integer "attack_power"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "quest_rewards", force: :cascade do |t|
    t.string "reward_type"
    t.integer "amount"
    t.bigint "quest_id", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_quest_rewards_on_item_id"
    t.index ["quest_id"], name: "index_quest_rewards_on_quest_id"
  end

  create_table "quests", force: :cascade do |t|
    t.string "title"
    t.string "difficulty"
    t.integer "reward_gold"
    t.string "status"
    t.datetime "assigned_at"
    t.datetime "completed_at"
    t.bigint "hero_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["hero_id"], name: "index_quests_on_hero_id"
  end

  create_table "skills", force: :cascade do |t|
    t.string "name"
    t.string "element"
    t.integer "mana_cost"
    t.integer "level_required"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "hero_skills", "heros"
  add_foreign_key "hero_skills", "skills"
  add_foreign_key "heros", "guilds"
  add_foreign_key "items", "heros"
  add_foreign_key "quest_rewards", "items"
  add_foreign_key "quest_rewards", "quests"
  add_foreign_key "quests", "heros"
end
