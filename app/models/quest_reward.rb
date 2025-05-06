# frozen_string_literal: true

class QuestReward < ApplicationRecord
  belongs_to :quest
  belongs_to :item, optional: true
  belongs_to :hero, optional: true

  enum :reward_type, { gold: 0, item: 1, experience: 2 }

  validates :item_id, presence: true, if: -> { reward_type == 'item' }

  def claimed?
    hero.present?
  end
end
