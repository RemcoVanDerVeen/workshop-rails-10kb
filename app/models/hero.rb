# frozen_string_literal: true

class Hero < ApplicationRecord
  include HasIntroduction

  belongs_to :guild, optional: false

  has_many :hero_skills, dependent: :destroy
  has_many :skills, through: :hero_skills

  has_many :items, dependent: :destroy
  has_many :quests, dependent: :nullify

  has_many :quest_rewards, dependent: :nullify

  validates :name, presence: true
  validates :level, presence: true, numericality: { greater_than: 0 }

  def full_name
    "#{name} the #{race} #{player_class} from #{guild.name}"
  end

  def level_up
    self.level += 1
    self.experience_points = 0
    save
  end

  def gain_experience(amount)
    self.experience_points += amount
    save
  end
end
