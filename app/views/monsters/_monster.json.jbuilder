json.extract! monster, :id, :name, :monster_type, :hit_points, :attack_power, :created_at, :updated_at
json.url monster_url(monster, format: :json)
