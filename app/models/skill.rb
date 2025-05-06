class Skill < ApplicationRecord
  has_many :hero_skills
  has_many :heroes, through: :hero_skills
end
