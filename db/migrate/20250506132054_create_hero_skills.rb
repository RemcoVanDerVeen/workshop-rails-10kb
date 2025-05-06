# frozen_string_literal: true

class CreateHeroSkills < ActiveRecord::Migration[8.0]
  def change
    create_table :hero_skills do |t|
      t.references :hero, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
