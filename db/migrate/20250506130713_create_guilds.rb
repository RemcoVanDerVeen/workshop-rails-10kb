# frozen_string_literal: true

class CreateGuilds < ActiveRecord::Migration[8.0]
  def change
    create_table :guilds do |t|
      t.string :name
      t.string :motto
      t.date :founded_on

      t.timestamps
    end
  end
end
