class QuestReward < ApplicationRecord
  belongs_to :quest
  belongs_to :item, optional: true
  belongs_to :hero, optional: true

  enum :reward_type, [:gold, :item, :experience]

  validates :item_id, presence: true, if: -> { reward_type == "item" }

  def claimed?
    hero.present?
  end
end
