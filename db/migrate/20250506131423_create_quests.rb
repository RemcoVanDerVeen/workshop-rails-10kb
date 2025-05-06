class CreateQuests < ActiveRecord::Migration[8.0]
  def change
    create_table :quests do |t|
      t.string :title
      t.string :difficulty
      t.integer :reward_gold
      t.string :status
      t.datetime :assigned_at
      t.datetime :completed_at
      t.references :hero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
