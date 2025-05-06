class Quest < ApplicationRecord
  belongs_to :hero

  has_and_belongs_to_many :monsters
  has_many :quest_rewards
end
