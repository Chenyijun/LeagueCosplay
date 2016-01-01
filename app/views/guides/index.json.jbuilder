json.array!(@guides) do |guide|
  json.extract! guide, :id, :title, :type, :creator, :created_at, :updated_at, :active, :link, :description, :photo
  json.url guide_url(guide, format: :json)
end
