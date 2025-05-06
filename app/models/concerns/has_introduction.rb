# frozen_string_literal: true

module HasIntroduction
  extend ActiveSupport::Concern

  validates :name, presence: true

  def introduce
    "#{name} the #{self.class} from #{guild.name}"
  end
end
