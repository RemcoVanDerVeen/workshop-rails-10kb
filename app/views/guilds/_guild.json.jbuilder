# frozen_string_literal: true

json.extract! guild, :id, :name, :motto, :founded_on, :created_at, :updated_at
json.url guild_url(guild, format: :json)
