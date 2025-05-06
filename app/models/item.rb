class Item < ApplicationRecord
  belongs_to :hero, optional: true
  has_many :quest_rewards
  has_many :quests, through: :quest_rewards
end
