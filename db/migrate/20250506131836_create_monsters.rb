class CreateMonsters < ActiveRecord::Migration[8.0]
  def change
    create_table :monsters do |t|
      t.string :name
      t.string :monster_type
      t.integer :hit_points
      t.integer :attack_power

      t.timestamps
    end
  end
end
