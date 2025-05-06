# frozen_string_literal: true

json.extract! hero, :id, :name, :level, :player_class, :race, :experience_points, :guild_id, :created_at, :updated_at
json.url hero_url(hero, format: :json)
