json.extract! quest, :id, :title, :difficulty, :reward_gold, :status, :assigned_at, :completed_at, :hero_id, :created_at, :updated_at
json.url quest_url(quest, format: :json)
