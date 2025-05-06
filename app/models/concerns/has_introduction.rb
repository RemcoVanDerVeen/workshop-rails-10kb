# frozen_string_literal: true

module HasIntroduction
  extend ActiveSupport::Concern

  included do
    validates :name, presence: true
    validate :dirty_name_regex_validation, on: :update
  end

  def introduce
    "#{name} the #{self.class} from #{guild.name}"
  end

  private

  def dirty_name_regex_validation
    errors.add(:name, 'must be a valid name') unless name.match?(/\A[a-zA-Z0-9]+\z/)
  end
end
