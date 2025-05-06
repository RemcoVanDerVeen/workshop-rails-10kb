class CreateJoinTableMonstersQuests < ActiveRecord::Migration[8.0]
  def change
    create_join_table :monsters, :quests do |t|
      t.index [:monster_id, :quest_id]
      t.index [:quest_id, :monster_id]
    end
  end
end
