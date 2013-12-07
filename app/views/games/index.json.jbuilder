json.array!(@games) do |game|
  json.extract! game, :game_id, :game_name, :user_id, :info
  json.url game_url(game, format: :json)
end