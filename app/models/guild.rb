# frozen_string_literal: true

class Guild < ApplicationRecord
  has_many :heros, dependent: :destroy

  validates :name, presence: true
end
