json.array!(@skins) do |skin|
  json.extract! skin, :id, :champion, :name, :type, :hair_length, :hair_color_string, :armor, :gender, :faction, :race, :difficulty, :wings
  json.url skin_url(skin, format: :json)
end
