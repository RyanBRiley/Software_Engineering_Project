json.array!(@events) do |event|
  json.extract! event, :name, :event_date, :game_id, :location, :info
  json.url event_url(event, format: :json)
end