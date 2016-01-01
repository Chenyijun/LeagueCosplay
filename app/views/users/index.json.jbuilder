json.array!(@users) do |user|
  json.extract! user, :id, :name, :bio, :contactUrl, :email, :password, :role, :photos
  json.url user_url(user, format: :json)
end
