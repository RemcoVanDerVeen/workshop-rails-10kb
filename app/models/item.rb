# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :hero, optional: true
  has_many :quest_rewards, dependent: :destroy
  has_many :quests, through: :quest_rewards

  validates :name, presence: true
  validates :item_type, presence: true
  validates :rarity, presence: true
  validates :value, presence: true, numericality: { greater_than: 0 }
  validates :equipped, inclusion: { in: [true, false] }, if: -> { hero.present? }

  enum :item_type, { weapon: 0, armor: 1, consumable: 2, material: 3, quest_item: 4 }
  enum :rarity, { common: 0, uncommon: 1, rare: 2, epic: 3, legendary: 4 }

  scope :equipped, -> { where(equipped: true) }

  before_save :set_equipped, if: -> { hero_id_changed? && hero.present? }

  private

  def set_equipped
    self.equipped = true
  end
end
