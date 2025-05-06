# frozen_string_literal: true

class Skill < ApplicationRecord
  has_many :hero_skills, dependent: :destroy
  has_many :heros, through: :hero_skills

  validates :name, presence: true
  validates :element, presence: true
  validates :mana_cost, presence: true, numericality: { greater_than: 0 }
  validates :level_required, presence: true, numericality: { greater_than: 0 }
end
