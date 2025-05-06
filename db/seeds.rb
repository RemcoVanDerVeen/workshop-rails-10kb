# frozen_string_literal: true

# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seeding data..."

# Clear old data
QuestReward.delete_all
HeroSkill.delete_all
Item.delete_all
Skill.delete_all
Monster.delete_all
Quest.delete_all
Hero.delete_all
Guild.delete_all

# Guilds
puts "Creating guilds..."
guilds = Guild.create!([
  { name: "Blazing Phoenix", motto: "Rise from the ashes", founded_on: 10.years.ago },
  { name: "Shadow Blades", motto: "Swift and silent", founded_on: 5.years.ago }
])

# Heroes
puts "Creating heroes..."
heroes = Hero.create!([
  { name: "Aria Swiftwind", level: 12, player_class: "Ranger", race: "Elf", experience_points: 3200, guild: guilds[0] },
  { name: "Borin Stonehelm", level: 18, player_class: "Warrior", race: "Dwarf", experience_points: 7100, guild: guilds[1] },
  { name: "Celeste Moondrop", level: 15, player_class: "Mage", race: "Human", experience_points: 5500, guild: guilds[0] }
])

# Skills
puts "Creating skills..."
skills = Skill.create!([
  { name: "Fireball", element: "Fire", mana_cost: 30, level_required: 5 },
  { name: "Healing Light", element: "Holy", mana_cost: 20, level_required: 3 },
  { name: "Shadowstep", element: "Dark", mana_cost: 15, level_required: 7 }
])

# HeroSkills (join)
puts "Assigning hero skills..."
HeroSkill.create!([
  { hero: heroes[0], skill: skills[2] },
  { hero: heroes[1], skill: skills[0] },
  { hero: heroes[2], skill: skills[0] },
  { hero: heroes[2], skill: skills[1] }
])

# Items
puts "Creating items..."
items = Item.create!([
  { name: "Elven Bow", item_type: "Weapon", rarity: "Rare", value: 150, equipped: true, hero: heroes[0] },
  { name: "Steel Shield", item_type: "Armor", rarity: "Common", value: 60, equipped: true, hero: heroes[1] },
  { name: "Arcane Robe", item_type: "Armor", rarity: "Uncommon", value: 90, equipped: true, hero: nil}
])

# Monsters
puts "Creating monsters..."
monsters = Monster.create!([
  { name: "Goblin Raider", monster_type: "Goblin", hit_points: 50, attack_power: 8 },
  { name: "Cave Troll", monster_type: "Troll", hit_points: 180, attack_power: 25 },
  { name: "Wraith", monster_type: "Undead", hit_points: 90, attack_power: 15 }
])

# Quests
puts "Creating quests..."
quests = Quest.create!([
  { title: "Rescue the Village", difficulty: "Medium", reward_gold: 200, status: "completed", assigned_at: 5.days.ago, completed_at: 3.days.ago, hero: heroes[0] },
  { title: "Defeat the Cave Troll", difficulty: "Hard", reward_gold: 500, status: "in_progress", assigned_at: 1.day.ago, hero: heroes[1] }
])

# Monster <-> Quest join table
puts "Creating monster <-> quest join table..."
quests[0].monsters << monsters[0]
quests[1].monsters << monsters[1]

# Quest Rewards
puts "Creating quest rewards..."
QuestReward.create!([
  { reward_type: "gold", amount: 200, quest: quests[0] },
  { reward_type: "item", amount: 1, quest: quests[0], item: items[2] }
])

puts "Seeding complete!"
