class Hero < ApplicationRecord
  belongs_to :guild

  has_many :hero_skills
  has_many :skills, through: :hero_skills

  has_many :items
  has_many :quests
end
