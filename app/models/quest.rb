# frozen_string_literal: true

class Quest < ApplicationRecord
  belongs_to :hero

  has_and_belongs_to_many :monsters
  has_many :quest_rewards, dependent: :destroy

  validates :title, presence: true
  validates :difficulty, presence: true
  validates :status, presence: true

  enum :status, { pending: 0, in_progress: 1, completed: 2 }
  enum :difficulty, { easy: 0, medium: 1, hard: 2, insane: 3 }
end
