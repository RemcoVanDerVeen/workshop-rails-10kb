json.extract! item, :id, :name, :item_type, :rarity, :value, :equipped, :hero_id, :created_at, :updated_at
json.url item_url(item, format: :json)
