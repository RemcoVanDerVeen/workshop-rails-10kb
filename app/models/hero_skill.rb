# frozen_string_literal: true

class HeroSkill < ApplicationRecord
  belongs_to :hero
  belongs_to :skill
end
