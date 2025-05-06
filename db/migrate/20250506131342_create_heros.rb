# frozen_string_literal: true

class CreateHeros < ActiveRecord::Migration[8.0]
  def change
    create_table :heros do |t|
      t.string :name
      t.integer :level
      t.string :player_class
      t.string :race
      t.integer :experience_points
      t.references :guild, null: false, foreign_key: true

      t.timestamps
    end
  end
end
