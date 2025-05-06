class CreateSkills < ActiveRecord::Migration[8.0]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :element
      t.integer :mana_cost
      t.integer :level_required

      t.timestamps
    end
  end
end
