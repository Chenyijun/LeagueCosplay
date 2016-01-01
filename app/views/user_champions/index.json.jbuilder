json.array!(@user_champions) do |user_champion|
  json.extract! user_champion, :id, :user_id, :champion_id, :skin_id, :photo, :description
  json.url user_champion_url(user_champion, format: :json)
end
