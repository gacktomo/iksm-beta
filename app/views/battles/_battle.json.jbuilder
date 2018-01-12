json.extract! battle, :id, :result, :kill, :death, :assist, :special, :weapon_id, :udemae, :stage_id, :rule, :user_id, :created_at, :updated_at
json.url battle_url(battle, format: :json)
