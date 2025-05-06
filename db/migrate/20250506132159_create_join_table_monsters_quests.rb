# frozen_string_literal: true

class CreateJoinTableMonstersQuests < ActiveRecord::Migration[8.0]
  def change
    create_join_table :monsters, :quests do |t|
      t.index %i[monster_id quest_id]
      t.index %i[quest_id monster_id]
    end
  end
end
