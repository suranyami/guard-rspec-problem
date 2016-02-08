json.array!(@things) do |thing|
  json.extract! thing, :id, :name, :price
  json.url thing_url(thing, format: :json)
end
