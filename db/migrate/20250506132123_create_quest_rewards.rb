# frozen_string_literal: true

class CreateQuestRewards < ActiveRecord::Migration[8.0]
  def change
    create_table :quest_rewards do |t|
      t.string :reward_type
      t.integer :amount
      t.references :quest, null: false, foreign_key: true
      t.references :item, null: true, foreign_key: true
      t.references :hero, null: true, foreign_key: true

      t.timestamps
    end
  end
end
