# frozen_string_literal: true

class Monster < ApplicationRecord
  has_and_belongs_to_many :quests
end
