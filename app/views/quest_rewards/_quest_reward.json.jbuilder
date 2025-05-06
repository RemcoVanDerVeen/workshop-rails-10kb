# frozen_string_literal: true

json.extract! quest_reward, :id, :reward_type, :amount, :quest_id, :item_id, :created_at, :updated_at
json.url quest_reward_url(quest_reward, format: :json)
