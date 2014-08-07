json.array!(@essences) do |essence|
  json.extract! essence, :id, :title, :description, :exp, :img_url, :price, :type, :locate, :rating, :exp
  json.url essence_url(essence, format: :json)
end
