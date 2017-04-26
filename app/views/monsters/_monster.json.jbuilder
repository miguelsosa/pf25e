json.extract! monster, :id, :name, :cr, :xp, :ac, :hp, :str, :dex, :con, :int, :wis, :cha, :description, :created_at, :updated_at
json.url monster_url(monster, format: :json)
