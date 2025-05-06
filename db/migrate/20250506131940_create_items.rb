class CreateItems < ActiveRecord::Migration[8.0]
  def change
    create_table :items do |t|
      t.string :name
      t.string :item_type
      t.string :rarity
      t.integer :value
      t.boolean :equipped
      t.references :hero, null: false, foreign_key: true

      t.timestamps
    end
  end
end
